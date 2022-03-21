/* Dispatch a single note, with processing */

~dispatch = {|index|
	var start =  0;
	var chans = ~dm[\chans][index];
	var rate = rrand(~dm[\min_rate], ~dm[\max_rate]);
	var gain = 0.5 * ~dm[\global_gains][index];
	var overlap = rrand(0.05,1.0);
	var dk = 0.2;
	var sust = ~dm[\sfdurs][index] + overlap;
	var thisBus = ~busPool[~bus_index];
	var current_node;
	var processor_count = 3;
	~bus_index = (~bus_index +1) % ~busPool.size;
	if( ~dm[\retro_odds].coin, {rate = rate * -1; start = ~sfbufs[index].numFrames - 2});
	if( chans == 1, {
		current_node = Synth(\dm3MonoPlay,[\buffer, ~sfbufs[index], \rate, rate, \startPos, start, \gain, gain, \pan, 1.0.rand2, \outbus, thisBus]);
	},{
		var pan = 1.0.rand;
		var panL = cos(pan * (pi/2));
		var panR = sin(pan * (pi/2));
		current_node = Synth(\dm3StereoPlay,[\buffer, ~sfbufs[index], \rate, rate, \startPos, start, \gain, gain,
			\panL, panL, \panR, panR, \outbus, thisBus]);
	});
	processor_count.do({ arg i;
		current_node = ~adder.value(current_node, thisBus, sust, dk);
	});
	Synth.after(current_node, \passthrough, [\bus, thisBus, \duration, sust + dk]);
};