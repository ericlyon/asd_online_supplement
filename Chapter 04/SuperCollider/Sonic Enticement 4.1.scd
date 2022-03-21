// 1. boot the server

s.boot

// 2. load the Additive Synthesis library

(thisProcess.nowExecutingPath.dirname ++ "/adsyn3lib.scd").load;

// 3. Try this sawtooth wave with independently panning harmonics

~node = Synth(\sawtoothRand,[\freq, 100, \gain, 0.2]);

// now release it

~node.release;

// 4. Try adding some vibrato depth

~node = Synth(\sawtoothRand2,[\freq, 100, \gain, 0.2, \depth, 0.015]);
~node.release;

// now more depth

~node = Synth(\sawtoothRand2,[\freq, 100, \gain, 0.2, \depth, 0.05]);
~node.release;

// even more depth

~node = Synth(\sawtoothRand2,[\freq, 100, \gain, 0.2, \depth, 0.2]);
~node.release;

// some beating with moderate depth and two synths

(
~node1 = Synth(\sawtoothRand2,[\freq, 100, \gain, 0.1, \depth, 0.01]);
~node2 = Synth(\sawtoothRand2,[\freq, 100, \gain, 0.1, \depth, 0.01]);
)

// release them

~node1.release; ~node2.release;

// 5. A chord built up from ten sawtooths (different each time)

(
var synths = [];
10.do({
	synths = synths.add(Synth(\sawtoothRand2,[\freq, rrand(60.0,360), \gain, rrand(0.01,0.1),\depth, rrand(0.001,0.05)]));
});
~free = {synths.do({|synth|synth.release})};
)

// free the texture

~free.();

// open the chords up a bit
(
var synths = [];
10.do({
	synths = synths.add(Synth(\sawtoothRand2,[\freq, rrand(60.0,1200), \gain, rrand(0.01,0.1),\depth, rrand(0.001,0.05)]));
});
~free = {synths.do({|synth|synth.release})};
)

// free the texture

~free.();

// 6. Create a tunable pulse wave

(
var ratios = Array.fill(32, {1});
~x = Synth(\tunedPulse,[\ratios, ratios,\gain, 0.2]);
)

// free it

~x.release;

// now try again with detuned partials

(
var ratios = Array.fill(32, {rrand(0.95,1.05)});
~x = Synth(\tunedPulse,[\ratios, ratios,\gain, 0.2]);
)

// change up the tunings
~x.set(\ratios, Array.fill(32, {[1,3/2].choose}));

// a few more to try
~x.set(\ratios, Array.fill(32, {rrand(0.5,2)}));
~x.set(\ratios, Array.fill(32, {rrand(0.99,1.01)}));

// release it
~x.release;

// 7. Try a sawtooth-like sound with its harmonics played with tightly filtered noise

~x = Synth(\noiseSaw,[\gain,10]);

// release it

~x.release;

// another use of this instrument, sending parameters with arrays

(
var nharms = 32;
var ratios = Array.fill(nharms, {rrand(0.97,1.03)});
var pans = Array.fill(nharms,{rrand(0.01,0.1)});
~x = Synth(\noiseSaw,[\freq, 70,\ratios, ratios, \pans, pans, \gain, 10]);
)

// release it

~x.release;

// 8. Simulation of a sweeping filter by independently scaling each harmonic

~x = Synth(\pulseSweep);

// release it

~x.release;

// 9. An internally articulated pulse wave

(
var nharms = 32;
var panSpeeds = Array.fill(nharms,{rrand(0.1,0.4)});
var percSpeeds = Array.fill(nharms,{rrand(0.25,2.0)});
var ratios = Array.fill(nharms,{1});
~x = Synth(\pulseArticulation,[\freq,70,\panSpeeds,panSpeeds,\percSpeeds,percSpeeds,\ratios,ratios,\atk,0.05,\rls,1,\gain,0.5]);
)

~x.release

// now try some variations, one by one

~x.set(\ratios, Array.fill(32,{rrand(0.5,2)}));
~x.set(\ratios, Array.fill(32,{rrand(0.99,1.001)}));
~x.set(\ratios, Array.fill(32,{rrand(0.9,1.1)}));
~x.set(\percSpeeds, Array.fill(32,{rrand(0.25,2)}));
~x.set(\percSpeeds, Array.fill(32,{rrand(4.0,9.0)}));
~x.set(\percSpeeds, Array.fill(32,{rrand(2.0,2.2)}));
~x.set(\percSpeeds, Array.fill(32,{rrand(0.2,0.23)}));
~x.set(\percSpeeds, Array.fill(32,{rrand(0.05,0.1)}));
~x.set(\rls, 7.0);
~x.set(\rls, 1.0);
~x.set(\rls,0.5);
~x.set(\rls, 0.1);
~x.set(\rls, 0.01);
~x.set(\atk, 1.0);
~x.set(\atk, 0.005);
~x.set(\atk, 0.1);
~x.set(\freq, 220);
~x.set(\freq, 440);
~x.set(\freq,40);
~x.set(\freq,80);

// set it free

~x.release;

// try again with a dynamic, destablizing algorithm

(
var nharms = 32;
var percSpeeds = Array.fill( 32,{rrand(2,2.2)} );
var panSpeeds = Array.fill(nharms,{rrand(0.1,0.4)});
var ratios = Array.fill(32,{rrand(0.99,1.01)});
var x = Synth(\pulseArticulation,[\freq,70,\panSpeeds,panSpeeds,\percSpeeds,percSpeeds,\ratios,ratios,\atk,0.05,\rls,1,\gain,0.5]);
var f;
x.set(\atk,0.1);
x.set(\rls,1);
percSpeeds.postln;
f = fork {
	loop {
		x.set(\percSpeeds, percSpeeds);
		x.set(\ratios, ratios);
		percSpeeds.size.do({|i|
			percSpeeds[i] = percSpeeds[i] * rrand(0.7,1.3);
			ratios[i] = ratios[i] * rrand(0.97,1.03);
		});
		2.wait;
	};
};
~free = {f.stop; x.release };
)

// release it

~free.();

// 10. A pulse wave with independent looping envelopes on each harmonic

~x = Synth(\pulseEnvs,[\gain,0.2]);

// release it

~x.release;

// now let's mix two synths with different envelopes

(
~x1 = Synth(\pulseEnvs3,[\gain,0.5,\freq, 90]);
~x2 = Synth(\pulseEnvs4,[\gain,0.5, \freq, 100]);
)

// release them

~x1.release; ~x2.release;

// two time scaled versions of the same envelope profile

(
var timeScales = Array.fill(32,{0.3});
~x1 = Synth(\pulseEnvs1,[\gain,0.5, \timeScales, timeScales]);
timeScales = Array.fill(32,{0.33});
~x2 = Synth(\pulseEnvs1,[\gain,0.5, \timeScales, timeScales, \freq, 111]);
)

// release them

~x1.release; ~x2.release;

// a texture of indefinite duration, randomly selecting related synths

(
var synths = Array.newClear(3);
var nharms = 32;
var chords = [[1, 1.25,1.5],[1, 1.2,1.5], [1,1.5,2.25], [1,4/3,3/2] ];
var loopy = fork {
	loop {
		var freq = rrand(35,65).midicps;
		var ratios = chords.choose;
		synths.size.do({|i|
			var timeScales = Array.fill(nharms, {rrand(0.5,2.0) });
			var name = "pulseEnvs" ++ rrand(1,10);
			synths[i] = Synth(name,[\gain,rrand(-3.0,-9.0).dbamp, \timeScales, timeScales, \freq, freq * ratios[i]]);
		});
		rrand(5.0,25.0).wait;
		synths.do({|synth|
			synth.release;
		});
	}
};
~end = {
	loopy.stop;
	synths.do({|synth|
			synth.release;
	});
};
)

// turn it off

~end.();

// 11. Generating additive triadic textures using filtered noise

~fork = ~noiseTriadLoop.();

// stop the texture
~fork.stop;

// a few variants

~fork = ~noiseTriadLoop.(rq:0.01);

~fork.stop;

~fork = ~noiseTriadLoop.(gain:0.3,hcount:8,minBaseFreq:200, maxBaseFreq:400);

~fork.stop

~fork = ~noiseTriadLoop.(gain:0.3,hcount:3,minBaseFreq:200, maxBaseFreq:400);



// 12. A filtered noise additive synthesis texture of indefinite length, based on random selection of intervals

~fork = ~noiseIntervalMix.();

~fork.stop;

// a few variations

~fork = ~noiseIntervalMix.(rq:0.001, gain:0.4, maxBaseFreq:220, topFreq:1000);
~fork.stop;

~fork = ~noiseIntervalMix.(rq:0.01, gain:0.2, minBaseFreq: 50, maxBaseFreq:80, topFreq:700, minSeg:7, maxSeg:7 );
~fork.stop;

~fork = ~noiseIntervalMix.(rq:0.001, gain:0.4, minBaseFreq:400, maxBaseFreq:800, topFreq:3000);
~fork.stop;

~fork = ~noiseIntervfalMix.(rq:0.004, gain:0.6, minBaseFreq:150, maxBaseFreq:300, topFreq:1200);
~fork.stop;



