(
var nharms;
var ratioTemplate;
var panTemplate;

SynthDef(\noiseBand,{|freq, rq, gain, fadeIn=1, fadeOut=1, sust=3, pan=0 |
	var env = EnvGen.ar( Env([0,1,1,0],[fadeIn, sust, fadeOut],[0,0,-3]), levelScale: gain * 10, doneAction:2);
	var sig = Pan2.ar( BPF.ar(WhiteNoise.ar, freq, rq, env), pan );
	Out.ar(0,sig);
}).add;


SynthDef(\noiseBand1,{|freq, rq, gain, fadeIn=1, fadeOut=1, sust=3, speed, panPhase, panRange |
	var env = EnvGen.ar( Env([0,1,1,0],[fadeIn, sust, fadeOut],[0,0,-3]), levelScale: gain * 10, doneAction:2);
	var sig = Pan2.ar( BPF.ar(WhiteNoise.ar, freq, rq, env).distort, SinOsc.ar(speed,panPhase,panRange) );
	Out.ar(0,sig);
}).add;


SynthDef(\noiseBand3,{|freq, rq, gain, fadeIn=1, fadeOut=1, sust=3, speed, panPhase, panRange |
	var env = EnvGen.ar( Env([0,1,1,0],[fadeIn, sust, fadeOut],[0,0,-3]), levelScale: gain * 10, doneAction:2);
	var sig = BPF.ar(WhiteNoise.ar, freq, rq, env).distort;
	sig = BPF.ar(sig, freq, 0.2);
	sig = Pan2.ar( sig, SinOsc.ar(speed,panPhase,panRange) );
	Out.ar(0,sig);
}).add;


SynthDef(\noiseBand2,{|freq, rq, gain, fadeIn=1, fadeOut=1, sust=3, speed, panPhase, panRange |
	var env = EnvGen.ar( Env([0,1,1,0],[fadeIn, sust, fadeOut],[0,0,-3]), levelScale: gain * 10, doneAction:2);
	var sig1 = BPF.ar(WhiteNoise.ar, freq, rq, env);
	var sig2 = BPF.ar(WhiteNoise.ar, freq * 1.5, rq, env) * 0.25;
	var sig = Pan2.ar( sig1+sig2, SinOsc.ar(speed,panPhase,panRange) );
	Out.ar(0,sig);
}).add;

nharms = 32;
SynthDef(\sawtoothRand,{| freq = 100, gain = 0.1, gate=1|
	var amps = Array.newClear(nharms);
	var bigenv = Linen.kr(gate,3,1,3,2);
	nharms.do({| i |
		amps[i] = (i+1).reciprocal;
	});
	amps = amps/amps.sum;
	amps = amps * gain;
	nharms.do({|i|
		var thisFreq = freq * (i+1);
		var sig = SinOsc.ar(thisFreq,0,amps[i] * LFNoise1.kr(Rand(2.0,3.0)).range(0.001,1) );
		var pan = LFNoise1.kr(Rand(0.2,2.0));
		Out.ar(0, Pan2.ar(sig * bigenv,pan));
	});
}).add;

SynthDef(\sawtoothRand2,{| freq = 100, gain = 0.1, gate=1, depth = 0.01|
	var amps = Array.newClear(nharms);
	var bigenv = Linen.kr(gate,3,1,3,2);
	nharms.do({| i |
		amps[i] = (i+1).reciprocal;
	});
	amps = amps/amps.sum;
	nharms.do({|i|
		var thisFreq = freq * (i+1);
		var sig = SinOsc.ar(thisFreq * LFNoise1.kr(Rand(0.1,0.5), depth, 1) ,0,amps[i] * gain * LFNoise1.kr(Rand(2.0,3.0)).range(0.001,1) );
		var pan = LFNoise1.kr(Rand(0.2,2.0));
		Out.ar(0, Pan2.ar(sig * bigenv,pan));
	});
}).add;

ratioTemplate = Array.fill(nharms, {1});
SynthDef(\tunedPulse,{| freq = 100, gain = 0.1, gate=1|
	var amps = Array.fill(nharms,{1});
	var bigenv = Linen.kr(gate,3,1,3,2);
	var ratios = NamedControl.kr(\ratios, ratioTemplate);
	amps = amps/amps.sum;
	nharms.do({|i|
		var thisFreq = freq * (i+1) * ratios[i];
		var sig = SinOsc.ar(thisFreq,0,amps[i] * gain * LFNoise1.kr(Rand(2.0,3.0)).range(0.001,1));
		var pan = LFNoise1.kr(Rand(0.2,2.0));
		Out.ar(0, Pan2.ar(sig * bigenv,pan));
	});
}).add;


SynthDef(\pulseSweep,{| freq = 100, gain = 0.1, gate=1, speed = -0.25|
	var bigenv = Linen.kr(gate,3,1,3,2);
	var phasor = LFSaw.kr(speed,0,0.5,0.5);
	var ratios = \ratios.kr(ratioTemplate);
	gain = gain * nharms.reciprocal;
	nharms.do({|i|
		var thisFreq = freq * (i+1) * ratios[i];
		var sig = SinOsc.ar(thisFreq,0, gain *  sin(pi * (phasor + (i/nharms)).wrap(0,1)) );
		var pan = LFNoise1.kr(Rand(0.2,2.0));
		Out.ar(0, Pan2.ar(sig * bigenv,pan));
	});
}).add;


panTemplate = Array.fill(nharms, {rrand(0.1,1.0)});
SynthDef(\noiseSaw,{| freq = 100, gain = 0.1, gate=1, rq = 0.01|
	var bigenv = Linen.kr(gate,3,1,3,2);
	var amps = Array.fill(nharms,{|i| (i+1).reciprocal});
	var ratios = \ratios.kr(ratioTemplate);
	var pans = \pans.kr(panTemplate);
	amps = amps/amps.sum;
	nharms.do({|i|
		var thisFreq = freq * (i+1) * ratios[i];
		var sig = BPF.ar( WhiteNoise.ar(amps[i] * gain * LFNoise1.kr(Rand(2.0,3.0)).range(0.001,1)), thisFreq, rq);
		var pan = LFNoise1.kr(pans[i]);
		Out.ar(0, Pan2.ar(sig * bigenv,pan));
	});
}).add;



SynthDef(\pulseArticulation,{|freq = 100, gain = 0.1, gate=1,atk=0.05,rls=0.08|
	var bigenv = Linen.kr(gate,3,1,5,2);
	var ratios = \ratios.kr(ratioTemplate);
	var percSpeeds = \percSpeeds.kr(ratioTemplate);
	var panSpeeds = \panSpeeds.kr(ratioTemplate);
	gain = gain * nharms.reciprocal;
	nharms.do({|i|
		var thisFreq = freq * (i+1) * ratios[i];
		var envy = EnvGen.ar(Env.perc(atk,rls), Impulse.kr(percSpeeds[i]));
		var sig = SinOsc.ar(thisFreq,0, gain * envy);
		var pan = LFNoise1.kr(panSpeeds[i]);
		Out.ar(0, Pan2.ar(sig * bigenv,pan));
	});
}).add;


SynthDef(\pulseEnvs,{| freq = 100, gain = 0.1, gate=1|
	var globAmps = Array.fill(nharms, {1});
	var bigenv = Linen.kr(gate,3,1,5,2);
	var ratios = \ratios.kr(ratioTemplate);
	globAmps = globAmps/globAmps.sum;
	nharms.do({|i|
		var thisFreq, sig, pan;
		var segs, durs, curves, amps, fullDur, sum, rescale, localEnv;
		segs = rrand(4,12);
		durs = Array.fill(segs, { rrand(0.2, 1.2) });
		curves =  Array.fill(segs, { rrand(-4.0,4.0) });
		amps = Array.fill(segs - 1, { rrand(-60,0).dbamp });
		fullDur = rrand(0.25,6.0);
		sum = durs.sum;
		rescale = fullDur / sum;
		durs = durs * rescale;
		amps = [0,amps,0].flatten;
		localEnv = EnvGen.ar( Env(amps,durs,curves), Impulse.ar(fullDur.reciprocal) );
		thisFreq = freq * (i+1) * ratios[i];
		sig = SinOsc.ar(thisFreq,0,globAmps[i] * gain * localEnv );
		pan = LFNoise1.kr(Rand(0.2,2.0));
		Out.ar(0, Pan2.ar(sig * bigenv,pan));
	});
}).add;


//var ratiosTemplate = Array.fill(cnt, {1});
10.do({| j |
	var name = "pulseEnvs" ++ (j+1);
	SynthDef(name,{| freq = 100, gain = 0.1, gate=1 |
		var globAmps = Array.fill(nharms, {|i| (i+1).reciprocal });
		var bigenv = Linen.kr(gate,3,1,5,2);
		var ratios = \ratios.kr(ratioTemplate);
		globAmps = globAmps/globAmps.sum;
		nharms.do({|i|
			var thisFreq, sig, pan, segs, durs, curves, amps, fullDur, sum, rescale, localEnv;
			segs = rrand(4,12);
			durs = Array.fill(segs, { rrand(0.2, 1.2) });
			curves =  Array.fill(segs, { rrand(-4.0,4.0) });
			amps = Array.fill(segs - 1, { rrand(-60,0).dbamp });
			fullDur = rrand(3.0,15.0);
			sum = durs.sum;
			rescale = fullDur / sum;
			durs = durs * rescale;
			amps = [0,amps,0].flatten;
			localEnv = EnvGen.ar( Env(amps,durs,curves), Impulse.ar(fullDur.reciprocal) );
			thisFreq = freq * (i+1) * ratios[i];
			sig = SinOsc.ar(thisFreq,0,globAmps[i] * gain * localEnv );
			pan = LFNoise1.kr(Rand(0.2,2.0));
			Out.ar(0, Pan2.ar(sig * bigenv,pan));
		});
	}).add;
});


~interval_from = {| maxInterval = 17 |
	var i1,i2,i3;
	i1 = 1 + maxInterval.rand;
	i2 = 1 + maxInterval.rand;
	while( {i1 == i2}, { i2 = 1 + maxInterval.rand });
	i3 = i1 / i2;
	if( i3 < 1, {i3 = i3.reciprocal});
	while({ i3 > 0.6.reciprocal},{ i3 = i3 / 2});
	i3;
};

~noiseTriadLoop = {|hcount = 14, fin = 2, fout = 4, rq = 0.002, gain = 0.1,
	minBaseFreq = 80, maxBaseFreq = 120|
	var sust, moveroot, majorflag, ratio, dex, forker;
	var intervals = Array.newClear(hcount);
	var minor = [1.2,1.25,4/3];
	var major = [1.25,1.2,4/3];
	intervals[0] = rrand(minBaseFreq,maxBaseFreq);
	forker = fork {
		loop {
			moveroot = ~interval_from.();
			intervals[0]  = intervals[0]  * moveroot;
			while({ intervals[0] < minBaseFreq}, {intervals[0] = intervals[0] * 2});
			while({ intervals[0] > maxBaseFreq}, {intervals[0] = intervals[0] / 2});
			majorflag = [true,false].choose;
			dex = 3.rand;
			(hcount - 1).do({| i |
				if( majorflag, { ratio = major[dex] },{ ratio = minor[dex] });
				dex = (dex + 1) % 3;
				intervals[i + 1] = intervals[i] * ratio;
			});

			sust = [4,8].wchoose([0.7,0.3]);
			fork {
				intervals.do({| freq |
					rrand(0.0,0.5).wait;
					Synth(\noiseBand,[\freq, freq, \rq,rq,\fadeIn,fin, \fadeOut, fout, \sust, sust, \pan, 1.0.rand2, \gain, gain ]);
				});
			};
			sust.wait;
		};
	};
	forker;
};

~noiseIntervalMix = {|rq = 0.002, gain = 0.3,
	minBaseFreq = 55, maxBaseFreq = 500, topFreq = 1500, minSeg=6.0, maxSeg=12.0|
	var sust, ratio, dex, forker, curFreq;
	var intervals = [2/1,3/2,4/3,5/4,6/5,7/6,8/7,9/8];
	var baseFreq = rrand(minBaseFreq,maxBaseFreq);
	forker = fork {
		loop {
			var freqs = [], cnt = 0;
			var eventDur = rrand(6.0, 15.0);
			curFreq = baseFreq;
			while( {curFreq < topFreq},{
				freqs = freqs.add(curFreq);
				curFreq = curFreq * intervals.wchoose([1,8,4,3,3,0.25,0.25,1].normalizeSum);
			});
			baseFreq  = baseFreq  * ~interval_from.(5);
			while({baseFreq > maxBaseFreq},{ baseFreq = baseFreq / 2});
			freqs = freqs.scramble;
			sust = rrand(5.0,10.0);
			freqs.do({| freq |
				var fin = rrand(1.0,4.0);
				var fout = rrand(3.0,6.0);
				var sust = eventDur - fin;
				var panPhase = (pi*2).rand;
				var panRange = rrand(0.2,0.8);
				var panSpeed = rrand(0.02,0.1);
				fork {
					2.0.rand.wait;
					Synth(\noiseBand2,[\freq, freq, \rq,rq,\fadeIn,fin,\fadeOut, fout,
						\sust, sust,\speed, panSpeed, \panPhase, panPhase, \panRange, panRange,\gain, gain * rrand(0.7,1.0) ]);
				}
			});
			eventDur.wait;
		};
	};
	forker;
};
"Loaded adsyn3lib.sc";
)