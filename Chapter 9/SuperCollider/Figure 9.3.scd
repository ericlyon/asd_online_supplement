(
SynthDef(\pulse, {
	arg freq, outbus, gain;
	var env = EnvGen.ar(Env.perc, Impulse.ar(2), gain );
	var pulse = Pulse.ar(freq, mul: env);
	Out.ar(outbus, pulse ! 2);
}).add;