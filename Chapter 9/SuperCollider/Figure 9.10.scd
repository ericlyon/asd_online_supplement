SynthDef(\passthrough,{
	arg bus, duration;
	var terminate = Line.kr(0,0,duration, doneAction:2);
	var input = In.ar(bus,2);
	Out.ar(0, input);
}).add;