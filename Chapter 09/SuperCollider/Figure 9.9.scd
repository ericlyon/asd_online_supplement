(
SynthDef(\dm3StereoPlay,{
	arg buffer, rate, startPos, gain, panL, panR, outbus = 0;
	var raw = PlayBuf.ar(2, buffer, rate * BufRateScale.kr(buffer), startPos: startPos, doneAction:2, loop: 0);
	raw[0] = raw[0] * panL;
	raw[1] = raw[1] * panR;
	Out.ar(outbus, raw * gain);
}).add;

SynthDef(\dm3MonoPlay,{
	arg buffer, rate, startPos, gain, pan = 0, outbus = 0;
	var raw = PlayBuf.ar(1, buffer, rate * BufRateScale.kr(buffer), startPos: startPos, doneAction:2, loop: 0);
	Out.ar(outbus, Pan2.ar(raw,pan,gain) );
}).add;
)