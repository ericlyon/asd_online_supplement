SynthDef(\randfilt, {
	arg bus;
	var input = In.ar(bus,2);
	var output = RLPF.ar(input, LFNoise1.ar(5).range(100.0,1500.0), 0.05);
	ReplaceOut.ar(bus, output);
}).add;

SynthDef(\echos, {
	arg bus;
	var input = In.ar(bus,2);
	var output = CombN.ar(input, 0.2, 0.2, 2.0);
	ReplaceOut.ar(bus, output);
}).add;