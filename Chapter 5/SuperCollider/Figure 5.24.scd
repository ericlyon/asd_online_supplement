(
var indur = 8;
var outdur = 8;
var textureDur = 60;
var now = 0;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 0.3;
var tfac = 1;
var transp = 1;
var fadeTime = 0.05;
var filename = "Figure5.24.csd";
var thisDirectory = thisProcess.nowExecutingPath.dirname;
var fullName = thisDirectory ++ "/" ++ filename;
var f = File.new(fullName,"w");
f.write(
"
<CsoundSynthesizer>
<CsInstruments>
sr=44100
ksmps = 32
nchnls = 2
0dbfs = 1
instr 8
	istart = p4
	iend = p5
	ifile = p6
	ipartial = p7
	igain = p8
	itransp = p9
	iloc = p10
	ipio2 = 1.5707963267949
	ileft = cos(iloc * ipio2)
	iright = sin(iloc * ipio2)
	ifadein = p11
	ifadeout = p12
	isust = p3 - (ifadein + ifadeout)
	ktime line istart, p3, iend
	kfreq, kamp ATSread ktime, ifile, ipartial
	kenv linseg 0, ifadein, igain, isust, igain, ifadeout, 0
	asig oscili kamp * kenv, kfreq * itransp, 1
	outs asig * ileft,asig * iright
endin
</CsInstruments>
<CsScore>
f1 0 16384 10 1
");
while({ now < textureDur},{
	var pan = 1.0.rand.trunc(0.01);
	var thisPartial = rrand(1,8);
	var thisStart = rrand(4.0,6.0).trunc(0.001);
	var loopDur = rrand(0.12,0.3).trunc(0.01);
	var thisEnd = thisStart + loopDur;
	var loopSegDur = rrand(4.0, 12.0).trunc(0.01);
	var loopCnt = (loopSegDur/loopDur).round;
	var localNow = now;
	loopCnt.do({
		f.write("i8 ");
		[localNow,loopDur,thisStart,thisEnd].do({| param |
			f.write(param.asString);
			f.write(" ");
		});
		f.write(fname);
		f.write(" ");
		[thisPartial,gain, transp, pan, fadeTime, fadeTime].do({| param |
			f.write(param.asString);
			f.write(" ");
		});
		f.write("\n");
		localNow = localNow + loopDur;
	});
	now = now + (rrand(0.1,0.5)).trunc(0.01);
});
f.write("
</CsScore>
</CsoundSynthesizer>
"
);
f.close;
)
