(
var indur = 8.0;
var outdur = 20;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 0.25;
var transpo = [1,1.25,1.5,(8/9)*2];
postln("f1 0 16384 10 1");
transpo.do({| tfac |
	partials.do({| i |
		postf("i3 0 % 0 % % % % %\n",outdur,indur,fname, i+1,gain, tfac);
	});
});
)
