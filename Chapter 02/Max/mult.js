inlets = 2;
outlets = 1;
var leftop;
var rightop = 1.0;

function msg_float(x)
{
	var result;
	if(this.inlet == 0){
		leftop = x;
	} else if (this.inlet == 1) {
		rightop = x;
	}
	result = leftop * rightop;
	outlet(0,result);
}