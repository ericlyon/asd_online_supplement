1.5 * 9/8

(
	var slendro =  [0, 219.5,266.5,227,233.5,258.5];
var ratios = slendro.integrate.collect({ arg x; (2 ** (x/1200)).trunc(0.0001) });
ratios
)

(
	var penta =  [0,2,4,7,9].midiratio;
penta
)

(
	var diatonic =  [0,2,4,5,7,9,11].midiratio;
diatonic
)

(
var chromatic =  (0..11).midiratio.trunc(0.001);
chromatic
)

(
//octatonic
var scale =  [0,1,3,4,6,7,9,10].midiratio;
scale
)

(
//wholetone
var scale =  [0,2,4,6,8,10].midiratio;
scale
)

(
//wholetone
var scale =  [0,0.5,1,1.5,2,2.5,3].midiratio;
scale
)


(
var ratios = [ 1.0, 1.1351765298847, 1.3240889103954, 1.509600354319, 1.7275769825823];
var minFreq = 100;
var maxFreq = 900;
var allFreqs = Array.newClear(100);
var currentFreq = minFreq;
var count = 0;
var ratIndex = 0;
var octave = 1;
while({
	currentFreq < maxFreq;
}, {
	currentFreq = minFreq * ratios[ratIndex] * octave;
	allFreqs[count] = currentFreq;
	count = count + 1;
	ratIndex = ratIndex + 1;
	if( ratIndex == ratios.size, {ratIndex = 0; octave = octave * 2; octave.postln});
});
["count",count].postln;
allFreqs;

)