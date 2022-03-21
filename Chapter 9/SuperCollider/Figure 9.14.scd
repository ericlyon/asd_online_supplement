/* add a processor node to the signal chain */

~adder = {|lastNode, thisBus, sust, dk|
	var thisNode;
	var blend = rrand(~dm[\blend_min],~dm[\blend_max]);
	var available_synths = [\xRing, \xComb, \xSweep1, \xSweep2, \xStv, \xAlpverb, \xCombchord, \xBendy, \xTremolo];
	var odds = ~dm[\processor_odds];
	var synthName = available_synths.wchoose(odds.normalizeSum);
	switch(synthName,
		\xRing, {thisNode = Synth.after(lastNode, \xRing,[\freq, exprand(100.0,4000.0),
			\sust, sust, \dk, dk, \bus, thisBus, \blend, blend])},
		\xComb, {thisNode = Synth.after(lastNode, \xComb,[\delTime, rrand(0.03,0.49), \ringTime, rrand(0.25,6),
			\sust, sust, \dk, dk, \bus, thisBus, \blend, blend] ); },
		\xSweep,
		{thisNode = Synth.after(lastNode, \xSweep,[\freq1, rrand(1000.0,4000), \freq2, rrand(200.0,400),
			\rez,rrand(0.1,0.5), \sust, sust, \dk, dk, \bus, thisBus, \blend, blend])},
		\xSweep2,
		{thisNode = Synth.after(lastNode, \xSweep,[\freq2, rrand(1000.0,4000), \freq1, rrand(400.0,600),
			\rez,rrand(0.1,0.5), \sust, sust, \dk, dk, \bus, thisBus, \blend, blend])},
		\xStv,
		{thisNode = Synth.after(lastNode, \xStv,[\speed1, rrand(0.05,0.6),
			\speed2, rrand(0.01,0.6), \dktime, rrand(0.02,0.60),
			\sust, sust, \dk, dk, \bus, thisBus, \blend, blend])},
		\xAlpverb,
		{thisNode = Synth.after(lastNode, \xAlpverb,[\dktime, rrand(5.0,10.0),
			\sust, sust, \dk, dk, \bus, thisBus, \blend, blend])},
		\xCombchord,
		{
			var chords = [[0,4,7,10],[0,5,10,15], [0,4,7,11], [0,2,4,6],[0,4,11,13]];
			var freqs = chords.choose.midiratio * rrand(200,500);
			thisNode = Synth.after(lastNode, \xCombchord,[\dktime, rrand(0.5, 3),
			\sust, sust, \dk, dk, \bus, thisBus, \blend, blend, \freqs, freqs])},
		\xBendy,
		{thisNode = Synth.after(lastNode, \xBendy,[\sust, sust, \dk, dk, \bus, thisBus, \blend, blend,
			\speed1,rrand(0.5,3.0, \speed2, rrand(0.5,3.0))])},
		\xTremolo,
		{thisNode = Synth.after(lastNode, \xTremolo,[\sust, sust, \dk, dk, \bus, thisBus,
			\blend, blend, \speed, rrand(3.0,15.0)])},
	);
	thisNode;
};