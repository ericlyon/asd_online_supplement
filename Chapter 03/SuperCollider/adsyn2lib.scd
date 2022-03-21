(
// SYNTHDEFS

SynthDef(\asd_epharmonic,{| freq,amp,phase,atk,dk,rls,gate=1 |
	var envSpec = Env.adsr(atk, dk, 0.7, rls);
	var env = EnvGen.ar(envSpec, gate, doneAction:2);
	var sig = SinOsc.ar(freq, phase, env * amp);
	Out.ar(0, sig ! 2);
}).add;


SynthDef(\asd_epharmonic_stereo1,{| freq,amp,phase,atk,dk,rls,gate=1, chan=0 |
	var envSpec = Env.adsr(atk, dk, 0.7, rls);
	var env = EnvGen.ar(envSpec, gate, doneAction:2);
	var sig = SinOsc.ar(freq, phase, env * amp);
	Out.ar(chan, sig);
}).add;

SynthDef(\asd_epharmonic_stereo2,{| freq,amp,phase,atk,dk,rls,gate=1, pan=0 |
	var envSpec = Env.adsr(atk, dk, 0.7, rls);
	var env = EnvGen.ar(envSpec, gate, doneAction:2);
	var sig = SinOsc.ar(freq, phase, env * amp);
	Out.ar(0, Pan2.ar(sig,pan));
}).add;

SynthDef(\asd_epharmonic_stereo3,{| freq,amp,phase,atk,dk,rls,gate=1, speed=3 |
	var envSpec = Env.adsr(atk, dk, 0.7, rls);
	var env = EnvGen.ar(envSpec, gate, doneAction:2);
	var sig = SinOsc.ar(freq, phase, env * amp);
	Out.ar(0, Pan2.ar(sig,LFNoise1.kr(speed)));
}).add;

SynthDef(\asd_epharmonic_stereo4,{| freq1,freq2,amp,phase,atk,dk,rls,gate=1 |
	var envSpec = Env.adsr(atk, dk, 0.7, rls);
	var env = EnvGen.ar(envSpec, gate, doneAction:2) * amp;
	var sig1 = SinOsc.ar(freq1, phase, env);
	var sig2 = SinOsc.ar(freq2, phase, env);
	Out.ar(0, [sig1,sig2]);
}).add;
// ENVIRONMENT VARIABLES

~nharms = 32;
~p = Dictionary.new;
~p[\amps] = Array.newClear(~nharms);
~p[\phases] = Array.newClear(~nharms);
~p[\fmults] = Array.newClear(~nharms);
~p[\atks] = Array.newClear(~nharms);
~p[\dks] = Array.newClear(~nharms);
~p[\rlss] = Array.newClear(~nharms);

// NEEDED FUNCTIONS

~square = { | nharms, amps, fmults, phases |
	var sum = 0, rescale;
	nharms.do({| i |
		if( (i % 2) == 0, {
			sum = sum +  (i + 1).reciprocal;
		});
	});
	rescale = sum.reciprocal;
	nharms.do({| i |
		if( (i % 2) == 0,{
			amps[i] = rescale * (i+1).reciprocal;
		},{
			amps[i] = 0.0;
		});
		fmults[i] = i + 1;
		phases[i] = 0;
	});
};

~triangle = { | nharms, amps, fmults, phases |
	var sum = 0, rescale;
	nharms.do({| i |
		if( (i % 2) == 0, {
			sum = sum +  (i + 1).squared.reciprocal;
		});
	});
	rescale = sum.reciprocal;
	nharms.do({| i |
		if( (i % 2) == 0,{
			amps[i] = rescale * (i+1).squared.reciprocal;
		},{
			amps[i] = 0.0;
		});
		fmults[i] = i + 1;
		phases[i] = pi / 2;
	});
};

~sawtooth = { | nharms, amps, fmults, phases |
	var sum = 0, rescale;
	nharms.do({| i |
		sum = sum + (1.0 / (i + 1));
	});
	rescale = sum.reciprocal;
	nharms.do({| i |
		amps[i] = rescale/(i+1);
		fmults[i] = i + 1;
		phases[i] = 0.0;
	});
};

~pulse = { | nharms, amps, fmults, phases |
	var sum = 0, rescale;
	nharms.do({| i |
			sum = sum +  1;
	});
	rescale = sum.reciprocal;
	nharms.do({| i |
		if( (i % 2) == 0,{
			amps[i] = rescale;
		},{
			amps[i] = 0.0;
		});
		fmults[i] = i + 1;
		phases[i] = pi / 4;
	});
};


~rand_amps =  {| dbRange, nharms, amps |
	var i, gain, randDecibels, randAmp, sum = 0, rescale;
	nharms.do({| i |
		randDecibels = dbRange.rand * -1.0;
		randAmp = randDecibels.dbamp;
		sum = sum + randAmp;
		amps[i] = randAmp;
	});
	rescale = 1.0 / sum;
	nharms.do({| i |
		amps[i] = amps[i] * rescale;
	});
};

~freq_dev = {| nharms, fmults, fac |
	nharms.do({ | i |
		fmults[i] = (i + 1) * (1 + fac.rand2);
	});
};

~stretcher = { |nharms, fmults, fac|
	nharms.do({| i |
		fmults[i] = 1 + (i * (1 + fac));
	});
};

~adsr_all = {| nharms, p, atk, dk, rls |
	nharms.do({| i |
		p[\atks][i] = atk;
		p[\dks][i]  = dk;
		p[\rlss][i]  = rls;
	});
};

~adsr_rand = { | nharms, p, minenv, maxenv |
	nharms.do({| i |
		p[\atks][i] = rrand(minenv, maxenv);
		p[\dks][i] = rrand(minenv, maxenv);
		p[\rlss][i] = rrand(minenv, maxenv);
	});
};

~adsr_rand2 = { |nharms, p, minAtk, maxAtk, minDk, maxDk, minRls, maxRls |
	nharms.do({| i |
		p[\atks][i] = rrand(minAtk, maxAtk);
		p[\dks][i]  = rrand(minDk, maxDk);
		p[\rlss][i]  = rrand(minRls, maxRls);
	});
};

~adsr_stretcher = { |nharms, p, atk,dk,rls,stretchFac|
	nharms.do({| i |
		p[\atks][i] = atk;
		p[\dks][i] = dk;
		p[\rlss][i] = rls;
		atk = atk * (1 + stretchFac);
		dk = dk * (1 + stretchFac);
		rls = rls * (1 + stretchFac);
	});
};

~basicKeyboardPlayback = {
	var notes, on, off, freq, gain;
	MIDIClient.init;
	MIDIIn.connectAll;
	notes = Array2D.new(128, ~nharms);
	on = MIDIFunc.noteOn({ |veloc, key|
		freq = key.midicps;
		gain = 0.25 * veloc / 127;
		~nharms.do({| i |
			var freqm = ~p[\fmults][i] * freq;
			var amp = ~p[\amps][i] * gain;
			var phase = ~p[\phases][i];
			var atk = ~p[\atks][i];
			var dk = ~p[\dks][i];
			var rls = ~p[\rlss][i];
			notes[key, i] = Synth(\asd_epharmonic,[\freq, freqm,\amp, amp, \phase, phase,\atk, atk, \dk, dk, \rls, rls]);
		});
	});
	off = MIDIFunc.noteOff({ |veloc, key|
		~nharms.do({| i |
			notes[key, i].set(\gate,0);
		});
	});
	~quitMIDI = { on.free; off.free; };
	"execute \'~quitMIDI.()\' to end this keyboard configuration."
};

~multiTimbreKeyboard1 = {
	var notes, on, off, freq, gain;
	MIDIClient.init;
	MIDIIn.connectAll;
	notes = Array2D.new(128, ~nharms);
	on = MIDIFunc.noteOn({ |veloc, key|
		freq = key.midicps;
		gain = 0.25 * veloc / 127;
		~p = ~pats.choose.deepCopy;
		~nharms.do({| i |
			var freqm = ~p[\fmults][i] * freq;
			var amp = ~p[\amps][i] * gain;
			var phase = ~p[\phases][i];
			var atk = ~p[\atks][i];
			var dk = ~p[\dks][i];
			var rls = ~p[\rlss][i];
			notes[key, i] = Synth(\asd_epharmonic,[\freq, freqm,\amp, amp, \phase, phase,\atk, atk, \dk, dk, \rls, rls]);
		});
	});
	off = MIDIFunc.noteOff({ |veloc, key|
		~nharms.do({| i |
			notes[key, i].set(\gate,0);
		});
	});
	~quitMIDI = { on.free; off.free; };
	"execute \'~quitMIDI.()\' to end this keyboard configuration.";
};

~multiTimbreKeyboard2 = {
	var notes, on, off, freq, gain;
	MIDIClient.init;
	MIDIIn.connectAll;
	notes = Array2D.new(128, ~nharms);
	on = MIDIFunc.noteOn({ |veloc, key|
		freq = key.midicps;
		gain = 0.25 * veloc / 127;
		[~square, ~triangle, ~sawtooth, ~pulse].choose.( ~nharms, ~p[\amps], ~p[\fmults], ~p[\phases] );
		~adsr_rand2.(~nharms, ~p, 0.01, 2, 0.1, 0.3, 0.5, 6.0);
		if(0.3.coin, { ~rand_amps.(rrand(10,50), ~nharms,~p[\amps] )} );
		if(0.05.coin, { ~freq_dev.(~nharms, ~p[\fmults], rrand(0.001,0.3) ); });
		~nharms.do({| i |
			var freqm = ~p[\fmults][i] * freq;
			var amp = ~p[\amps][i] * gain;
			var phase = ~p[\phases][i];
			var atk = ~p[\atks][i];
			var dk = ~p[\dks][i];
			var rls = ~p[\rlss][i];
			notes[key, i] = Synth(\asd_epharmonic,[\freq, freqm,\amp, amp, \phase, phase,\atk, atk, \dk, dk, \rls, rls]);
		});
	});
	off = MIDIFunc.noteOff({ |veloc, key|
		~nharms.do({| i |
			notes[key, i].set(\gate,0);
		});
	});
	~quitMIDI = { on.free; off.free; };
	"execute \'~quitMIDI.()\' to end this keyboard configuration.";
};

~panningKeyboard1 = {
	var notes, on, off, freq, gain;
	MIDIClient.init;
	MIDIIn.connectAll;
	notes = Array2D.new(128, ~nharms);
	on = MIDIFunc.noteOn({ |veloc, key|
		freq = key.midicps;
		gain = 0.25 * veloc / 127;
		[~square, ~triangle, ~sawtooth, ~pulse].choose.( ~nharms, ~p[\amps], ~p[\fmults], ~p[\phases] );
		~adsr_rand2.(~nharms, ~p, 0.01, 2, 0.1, 0.3, 0.5, 6.0);
		if(0.3.coin, { ~rand_amps.(rrand(10,50), ~nharms,~p[\amps] )} );
		if(0.05.coin, { ~freq_dev.(~nharms, ~p[\fmults], rrand(0.001,0.3) ); });
		~nharms.do({| i |
			var freqm = ~p[\fmults][i] * freq;
			var amp = ~p[\amps][i] * gain;
			var phase = ~p[\phases][i];
			var atk = ~p[\atks][i];
			var dk = ~p[\dks][i];
			var rls = ~p[\rlss][i];
			var chan = 2.rand;
			notes[key, i] = Synth(\asd_epharmonic_stereo1,[\freq, freqm,\amp, amp, \phase, phase,\atk, atk, \dk, dk, \rls, rls, \chan, chan]);
		});
	});
	off = MIDIFunc.noteOff({ |veloc, key|
		~nharms.do({| i |
			notes[key, i].set(\gate,0);
		});
	});
	~quitMIDI = { on.free; off.free; };
	"execute \'~quitMIDI.()\' to end this keyboard configuration.";
};


~panningKeyboard2 = {
	var notes, on, off, freq, gain;
	MIDIClient.init;
	MIDIIn.connectAll;
	notes = Array2D.new(128, ~nharms);
	on = MIDIFunc.noteOn({ |veloc, key|
		freq = key.midicps;
		gain = 0.25 * veloc / 127;
		[~square, ~triangle, ~sawtooth, ~pulse].choose.( ~nharms, ~p[\amps], ~p[\fmults], ~p[\phases] );
		~adsr_rand2.(~nharms, ~p, 0.01, 2, 0.1, 0.3, 0.5, 6.0);
		if(0.3.coin, { ~rand_amps.(rrand(3,30), ~nharms,~p[\amps] )} );
		if(0.05.coin, { ~freq_dev.(~nharms, ~p[\fmults], rrand(0.001,0.3) ); });
		~nharms.do({| i |
			var freqm = ~p[\fmults][i] * freq;
			var amp = ~p[\amps][i] * gain;
			var phase = ~p[\phases][i];
			var atk = ~p[\atks][i];
			var dk = ~p[\dks][i];
			var rls = ~p[\rlss][i];
			var pan = 1.0.rand2;
			notes[key, i] = Synth(\asd_epharmonic_stereo2,[\freq, freqm,\amp, amp, \phase, phase,\atk, atk, \dk, dk, \rls, rls, \pan, pan]);
		});
	});
	off = MIDIFunc.noteOff({ |veloc, key|
		~nharms.do({| i |
			notes[key, i].set(\gate,0);
		});
	});
	~quitMIDI = { on.free; off.free; };
	"execute \'~quitMIDI.()\' to end this keyboard configuration.";
};

~panningKeyboard3 = {
	var notes, on, off, freq, gain;
	MIDIClient.init;
	MIDIIn.connectAll;
	notes = Array2D.new(128, ~nharms);
	on = MIDIFunc.noteOn({ |veloc, key|
		freq = key.midicps;
		gain = 0.25 * veloc / 127;
		[~square, ~triangle, ~sawtooth, ~pulse].choose.( ~nharms, ~p[\amps], ~p[\fmults], ~p[\phases] );
		~adsr_rand2.(~nharms, ~p, 0.01, 2, 0.1, 0.3, 0.5, 6.0);
		if(0.3.coin, { ~rand_amps.(rrand(3,30), ~nharms,~p[\amps] )} );
		if(0.7.coin, { ~freq_dev.(~nharms, ~p[\fmults], rrand(0.001,0.01) ); });
		~nharms.do({| i |
			var freqm = ~p[\fmults][i] * freq;
			var amp = ~p[\amps][i] * gain;
			var phase = ~p[\phases][i];
			var atk = ~p[\atks][i];
			var dk = ~p[\dks][i];
			var rls = ~p[\rlss][i];
			var speed = rrand(0.25,4.0);
			notes[key, i] = Synth(\asd_epharmonic_stereo3,[\freq, freqm,\amp, amp, \phase, phase,\atk, atk, \dk, dk, \rls, rls, \speed, speed]);
		});
	});
	off = MIDIFunc.noteOff({ |veloc, key|
		~nharms.do({| i |
			notes[key, i].set(\gate,0);
		});
	});
	~quitMIDI = { on.free; off.free; };
	"execute \'~quitMIDI.()\' to end this keyboard configuration.";
};

~panningKeyboard4 = {
	var notes, on, off, freq, gain;
	MIDIClient.init;
	MIDIIn.connectAll;
	notes = Array2D.new(128, ~nharms);
	on = MIDIFunc.noteOn({ |veloc, key|
		freq = key.midicps;
		gain = 0.25 * veloc / 127;
		[~square, ~triangle, ~sawtooth, ~pulse].choose.( ~nharms, ~p[\amps], ~p[\fmults], ~p[\phases] );
		~adsr_rand2.(~nharms, ~p, 0.01, 2, 0.1, 0.3, 0.5, 6.0);
		if(0.3.coin, { ~rand_amps.(rrand(3,30), ~nharms,~p[\amps] )} );
		if(0.7.coin, { ~freq_dev.(~nharms, ~p[\fmults], rrand(0.001,0.01) ); });
		~nharms.do({| i |
			var freq1 = ~p[\fmults][i] * freq;
			var amp = ~p[\amps][i] * gain;
			var phase = ~p[\phases][i];
			var atk = ~p[\atks][i];
			var dk = ~p[\dks][i];
			var rls = ~p[\rlss][i];
			var freq2 = freq1 * (1 + 0.005.rand2);
			notes[key, i] = Synth(\asd_epharmonic_stereo4,[\freq1, freq1,\freq2, freq2,\amp, amp, \phase, phase,\atk, atk, \dk, dk, \rls, rls]);
		});
	});
	off = MIDIFunc.noteOff({ |veloc, key|
		~nharms.do({| i |
			notes[key, i].set(\gate,0);
		});
	});
	~quitMIDI = { on.free; off.free; };
	"execute \'~quitMIDI.()\' to end this keyboard configuration.";
};

~generateNewPatterns = {
	~pats = Array.newClear(5);
	~adsr_all.(~nharms, ~p, 0.05, 0.25, 0.2); // make a fixed envelope
	~sawtooth.(~nharms, ~p[\amps], ~p[\fmults], ~p[\phases]); // sawtooth
	~pats[0] = ~p.deepCopy; // store first one
	~freq_dev.(~nharms, ~p[\fmults], 0.02);
	~pats[1] = ~p.deepCopy; // store first one
	~freq_dev.(~nharms, ~p[\fmults], 0.4);
	~pats[2] = ~p.deepCopy; // store first one
	~freq_dev.(~nharms, ~p[\fmults], 0.2);
	~adsr_rand2.(~nharms, ~p, 0.01, 2, 0.1, 0.3, 0.5, 8.0);
	~pats[3] = ~p.deepCopy; // store first one
	~triangle.(~nharms, ~p[\amps], ~p[\fmults], ~p[\phases]); // sawtooth
	~adsr_rand2.(~nharms, ~p, 0.01, 2, 0.1, 0.3, 0.5, 8.0);
	~pats[4] = ~p.deepCopy; // store first one
};


// Reload any stored patterns
/*
~pats = Archive.global.at(\addsynPatterns1);
if(~pats.notNil,{
	~p = ~pats[0].deepCopy; // activate first pattern
});
*/
"adsyn2lib.scd loaded."

)