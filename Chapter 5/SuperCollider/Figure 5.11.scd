(
var indur = 8;
var stretchfac = 2;
var start = 0;
var end = indur * stretchfac;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 1;
var transp = 1;
postln("f1 0 16384 10 1");
partials.do({| i |
	var iloc = 1.0.rand;
	postf("i4 0 % % % % % % % %\n",end,start,indur,fname, i+1,gain,transp,iloc);
});
)
