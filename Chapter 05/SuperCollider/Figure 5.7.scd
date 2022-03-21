(
var indur = 8;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 1;
postln("f1 0 16384 10 1");
partials.do({| i |
	var noteDur = rrand(1.0,20);
	var start = rrand(0,5.0);
	postf("i2 % % 0 % % % %\n",start, noteDur,indur,fname, i+1,gain);
});
)
