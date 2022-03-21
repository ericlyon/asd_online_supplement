(
SynthDef(\m2sPanner,{
	arg buf, minSpeed = 0.2, maxSpeed = 2.0, leftExtrema = -0.5, rightExtrema = 0.5, speedChangeSpeed = 1.0;
	var monoSig = PlayBuf.ar(1, buf, doneAction:2, rate: BufRateScale.kr(buf) );
	var panny = LFNoise1.ar(speedChangeSpeed).range(leftExtrema, rightExtrema);
	var panned = Pan2.ar(monoSig, panny);
	var envy = EnvGen.ar( Env.linen(0.1, 59.8, 0.1));
	Out.ar(0, panned * envy);
}).add;
)


/*
Convert mono to stereo with random panning
*/

b = Buffer.read(s, "/Volumes/Lyonizer4/SND/FlatReich/monoreich.aif")

(
var file = "/Volumes/Lyonizer4/SND/FlatReich/stereoreich.aif";
var recMode = false;
fork {
	if( recMode, {s.record(file);});
	Synth(\m2sPanner,[\buf, b]);
	60.wait;
	if(recMode, {s.stopRecording});
};
)

b.play

// simple way to test audio by playing a note
().play

s.sampleRate

s.reboot

1065 + 150

1350 / 150

s.killAll


5348 + 150

10.do({ rrand(-1,2).postln});

[61,62,64,66,67,69,71,73,74,76,78,79,81,83,85,86,88,90,91,93,95,97,98,100,102,103,105,107].size