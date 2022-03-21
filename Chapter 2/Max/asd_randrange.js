var rmin = jsarguments[1];
var rmax = jsarguments[2];

function bang() {
	var result;
	result = rmin + (Math.random() * (rmax - rmin));
	outlet(0,result);
}

function setminmax() {
	rmin = arguments[0];
	rmax = arguments[1];
}