s.boot
// load the adsyn library, which must be in the same directory with this file
(
var curdir = thisProcess.nowExecutingPath.dirname;
(curdir ++"/adsyn3lib.scd").load;
)

~node = Synth(\sawtoothRand2,[\freq, 100, \gain, 0.2, \depth, 0.015]);

~node.set(\depth, 0.01)

~node.release;
(
var w = Window.new("Control sawtoothRand2").front;
var flow = w.addFlowLayout;
var s1, s2,b1;
var cs1 = ControlSpec(0.00001, 0.2);
var cs2 = ControlSpec(70.0,400.0, \exp);
var node = Synth(\sawtoothRand2,[\freq, 70, \gain, 0.2, \depth, 0.015]);
s2 = Slider(w, 140@20);
s2.orientation = \horizontal;
StaticText(w,80@20).string = "Frequency";
s2.action = {|slider|
	var val = cs2.map(slider.value);
	node.set(\freq, val);
};
flow.nextLine;
s1 = Slider(w, 140@20);
s1.orientation = \horizontal;
StaticText(w,80@20).string = "Depth";
s1.action = {|slider|
	var val = cs1.map(slider.value);
	node.set(\depth, val);
};
flow.nextLine;
b1 = Button(w, 40@40);
b1.string = "Stop";
b1.action = {
	"All done, bye!".postln;
	node.release;
};
)


(
var w = Window.new("Control sawtoothRand2").front;
var flow = w.addFlowLayout;
var s1, s2,b1;
var cs1 = ControlSpec(70.0,400.0, \exp);
var cs2 = ControlSpec(0.00001, 0.2);
var node = Synth(\sawtoothRand2,[\freq, 70, \gain, 0.2, \depth, 0.015]);
s1 = Slider(w, 140@20);
s1.orientation = \horizontal;
StaticText(w,80@20).string = "Frequency";
s1.action = {|slider|
	var val = cs1.map(slider.value);
	node.set(\freq, val);
};
flow.nextLine;
s2 = Slider(w, 140@20);
s2.orientation = \horizontal;
StaticText(w,80@20).string = "Depth";
s2.action = {|slider|
	var val = cs2.map(slider.value);
	node.set(\depth, val);
};
flow.nextLine;
b1 = Button(w, 40@40);
b1.string = "Stop";
b1.action = {
	"All done, bye!".postln;
	node.release;
};
)

(
var freqCtl, depthCtl, offMe;
var cs1 = ControlSpec(70.0,400.0, \exp);
var cs2 = ControlSpec(0.00001, 0.2);
var node = Synth(\sawtoothRand2,[\freq, 70, \gain, 0.2, \depth, 0.015]);
MIDIClient.init;
MIDIIn.connectAll;
freqCtl = MIDIFunc.cc({|ccval|
	var val = cs1.map(ccval/127);
	ccval.postln;
	node.set(\freq, val);
},0);
depthCtl = MIDIFunc.cc({|ccval|
	var val = cs2.map(ccval/127);
	ccval.postln;
	node.set(\depth, val);
},1);
offMe = MIDIFunc.cc({|ccval|
	"All done, bye!".postln;
	node.release;
	ccval.postln;
	MIDIIn.disconnectAll;
},42);
)
