(
var indur = 5;
var textureDur = 60;
var now = 0;
var partials = 26;
var fname = "\"piano-Fsh3.ats\"";
var gain = 1;
var tfac = 1;
var transp = 1;
var fadeTime = 0.2;
var filename = "Figure5.26.csd";
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
5.do({
	now = 0;
while({ now < textureDur},{
	var pan = 1.0.rand.trunc(0.01);
	var thisPartial = rrand(1,partials);
	var thisStart = rrand(1.0,indur - 1.0).trunc(0.001);
	var loopDur = rrand(0.1,1.5).trunc(0.01);
	var thisEnd = thisStart + loopDur;
	var loopSegDur = rrand(2.0, 8.0).trunc(0.01);
	var loopCnt = (loopSegDur/loopDur).round;
	var localNow = now;
	var transpo = [0.666,1,1.25,1.5].choose;
	loopCnt.do({
		f.write("i8 ");
		[localNow,loopDur,thisStart,thisEnd].do({| param |
			f.write(param.asString);
			f.write(" ");
		});
		f.write(fname);
		f.write(" ");
		[thisPartial,gain, transpo, pan, fadeTime, fadeTime].do({| param |
			f.write(param.asString);
			f.write(" ");
		});
		f.write("\n");
		localNow = localNow + loopDur;
	});
	now = now + (rrand(0.1,0.5)).trunc(0.01);
});
});
f.write("
</CsScore>
</CsoundSynthesizer>
"
);
f.close;
("wrote" + fullName).postln;
)
