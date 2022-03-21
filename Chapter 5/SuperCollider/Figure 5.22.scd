(
var indur = 8;
var outdur = 8;
var textureDur = 60;
var now = 0;
var partials = 15;
var fname = "\"Gsh3.ats\"";
var gain = 0.1;
var tfac = 1;
var transp = 1;
var transpo = [1,1.2,1.25,1.5,0.833333,0.8,0.66666];
postln("f1 0 16384 10 1");
while({ now < textureDur},{
	var pan = 1.0.rand.trunc(0.01);
	var thisPartial = 1 + (partials.rand);
	postf("i4 % % 0 % % % % % %\n",now, outdur,indur,fname, thisPartial,gain, transp * transpo.choose, pan);
	now = (now + rrand(0.1,0.5)).trunc(0.01);
});
)
