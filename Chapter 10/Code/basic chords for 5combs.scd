// Math.pow(10.0, (-3 * deltime ) / rvbtime);

(
var base = 261;
var chord = base * [0,4,7,11,14].midiratio;
var ringtime = 4.0;
post("asd.combchord_unit ");
chord.do({
	arg freq;
	var dt = freq.reciprocal;
	var fbfac = pow(10.0, (-3.0 * dt) / ringtime).trunc(0.0001);
	post( (dt * 1000).trunc(0.0001) +  " " + fbfac + " ");
});
)



(
var ratios = [3/2,4/3,5/4,6/5,9/8];

var base = 55;
var ringtime = 4.0;
var chord = Array.newClear(5);
chord[0] = 1;
4.do({
	arg i;
	chord[i+1] = chord[i] * ratios.choose;
});
chord = chord * base;
post("asd.combchord_unit ");
chord.do({
	arg freq;
	var dt = freq.reciprocal;
	var fbfac = pow(10.0, (-3.0 * dt) / ringtime).trunc(0.0001);
	post( (dt * 1000).trunc(0.0001) +  " " + fbfac + " ");
});
"";
)

[1,5,8].midiratio.trunc(0.001)