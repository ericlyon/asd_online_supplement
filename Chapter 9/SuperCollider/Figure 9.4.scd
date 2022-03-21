~bus = Bus.audio(s,2);

SynthDef(\passthrough, {
	arg inbus, outbus;
	var input = In.ar(inbus,2);
	Out.ar(outbus, input);
}).add;