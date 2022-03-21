(
var indur = 8;
var outdur = 8;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 0.25;
var tfac = 1;
var transpo = [1,1.2,1.25,1.5, 0.83333333333333, 0.8, 0.66666666666667] ;
postln("f1 0 16384 10 1");
partials.do({| i |
	postf("i3 0 % 0 % % % % %\n",outdur,indur,fname, i+1,gain, tfac * transpo.choose);
});
)
