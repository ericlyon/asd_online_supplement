
(
var indur = 8;
var stretchfac = 4;
var outdur = indur * stretchfac;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 1;
postln("f1 0 16384 10 1");
partials.do({| i |
	postf("i2 0 % 0 % % % %\n",outdur,indur,fname, i+1,gain);
});
)
