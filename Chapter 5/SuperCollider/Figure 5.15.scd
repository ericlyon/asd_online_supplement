(
var indur = 8.0;
var outdur = 20;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 0.25;
var tfac = 1;
var transpo = [0.5, 0.5 * 3/2, 0.5 * 9/4, 0.5 * 27/8] ;
postln("f1 0 16384 10 1");
transpo.do({| tfac |
	partials.do({| i |
		var pspeed = rrand(0.1,0.4);
		postf("i5 0 % 0 % % % % % %\n",outdur,indur,fname, i+1,gain, tfac, pspeed);
	});
});
)
