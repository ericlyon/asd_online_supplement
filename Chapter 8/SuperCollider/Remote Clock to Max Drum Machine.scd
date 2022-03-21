
// 1. open a port
~nad = NetAddr("127.0.0.1", 6700); // send to Max on port 6700
// 2. start sending data to Max
(
var sequence = [0,1,2,3,6,7].stutter(4);
~loop = fork{
	var pat = 0;
	var cnt = 15;
	var index = 0;
	var tempo = 130;
	var tick = (60/tempo)/4;
	loop{
		~nad.sendMsg("/bang","bang");
		if( cnt == 15, {
			index = (index + 1) % sequence.size;
			pat =  sequence[index];
			cnt = 0;
			~nad.sendMsg("/recall", "recall", pat, 0);
		});
		tick.wait;
		cnt = cnt + 1;
	};
}
)
// 3. stop the loop when desired
~loop.stop;

(
~sequence = Array.fill(12, { 10.rand });
)

[0,1,2,3].stutter(4);