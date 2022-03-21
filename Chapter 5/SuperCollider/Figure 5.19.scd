(
var indur = 8.0;
var outdur = 20;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 1;
var tfac1 = 1;
var tfac2 = 0.5;
postln("f1 0 16384 10 1");
partials.do({| i |
	var pspeed = rrand(0.1,0.4);
	var fdev = rrand(0.01,0.07);
	var fspeed = rrand(0.1,1.0);
	postf("i7 0 % 0 % % % % % % % % %\n",outdur,indur,fname, i+1,gain, pspeed,fspeed,fdev);
});
)
