SynthDef(\xComb,{
	arg delTime = 0.2, ringTime = 3.0, sust, dk, bus, blend = 0.0;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var raw = In.ar(bus,2);
	var combed = CombN.ar(raw, 0.5, delTime, ringTime) * env;
	XOut.ar(bus, blend, combed);
}).add;

SynthDef(\xSweep,{
	arg sust, dk, bus, freq1, freq2, rez, blend = 0.5;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var raw = In.ar(bus,2);
	var vfreq = XLine.kr(freq1, freq2, sust);
	var flt = RLPF.ar(raw, vfreq, rez);
	XOut.ar(bus, blend, flt * env);
}).add;

SynthDef(\xStv,{
	arg freq, sust, dk, bus, blend = 0.5, dktime = 2.0, speed1 = 0.2, speed2 = 0.25;
	var move1 = SinOsc.ar(speed1, Rand(0.0,1.0)).range(0.001,0.01);
	var move2 = SinOsc.ar(speed2, Rand(0.0,1.0)).range(0.001,0.01);
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,2);
	var mono1  = CombC.ar(input[0],0.01, move1, dktime);
	var mono2  = CombC.ar(input[1],0.01, move2, dktime);
	var stv = [mono1,mono2] * env;
	XOut.ar(bus, blend, stv);
}).add;

SynthDef(\xAlpverb,{
	arg sust, dk, bus, blend = 0.5, dktime = 2.0;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,2);
	var reverb;
	reverb = DelayN.ar(input,0.003,0.003);
	5.do({
		reverb[0] = AllpassN.ar(reverb[0], 0.25, Rand(0.005,0.25), dktime);
		reverb[1] = AllpassN.ar(reverb[1], 0.25, Rand(0.005,0.25), dktime);
	});
	XOut.ar(bus, blend, reverb * env);
}).add;

SynthDef(\xCombchord,{
	arg sust, dk, bus, blend, dktime = 2.0;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,2);
	var freqlist = 261 * [0,4,7,11].midiratio;
	var chord  = Mix.ar( Ringz.ar(input, \freqs.kr(freqlist), dktime, mul: 0.01) );
	XOut.ar(bus, blend, chord * env);
}).add;

SynthDef(\xTremolo,{
	arg sust, dk, bus, blend, speed = 2;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,2);
	var tremo = input * SinOsc.ar(speed, pi/2).range(0.0,1.0) * env;
	XOut.ar(bus, blend, tremo);
}).add;

SynthDef(\xBendy,{
	arg sust, dk, bus, blend, speed1 = 1.1, speed2 = 1.34;
	var env = EnvGen.ar( Env([1,1,0],[sust,dk],-3), doneAction:2 );
	var input = In.ar(bus,2);
	var bent = CombC.ar(input, 0.1, LFNoise1.ar(speed1).range(0.001,0.099), LFNoise1.ar(speed2).range(0.1,3.0)) * env;
	XOut.ar(bus, blend, bent);
}).add;