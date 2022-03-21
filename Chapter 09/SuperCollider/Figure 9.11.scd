SynthDef(\xRing,{
	arg freq, sust, dk, bus, blend;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,2);
	var ringed = input * SinOsc.ar(freq) * env;
	XOut.ar(bus, blend, ringed);
}).add;