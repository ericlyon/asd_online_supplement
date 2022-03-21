(
var indur = 8.0;
var outdur = 20;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 0.25;
var scale = (30..54).midicps.scramble / 42.midicps;
var transpo = [1,1.25,1.5,(8/9)*2];
postln("f1 0 16384 10 1");
4.do({| j |
	var tfac = scale[j];
	partials.do({| i |
		postf("i3 0 % 0 % % % % %\n",outdur,indur,fname, i+1,gain, tfac);
	});
});
)
