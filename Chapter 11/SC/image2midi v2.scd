~i = Image.new(SCDoc.helpSourceDir +/+ "images/Swamp.png"); // add a path to your image

~imageFile = "/Users/ericlyon/Documents/_top images/eric-couch.jpg";
(
~imageFile = "/Users/ericlyon/Desktop/corey-eggs-black.png";
~i = Image.new(~imageFile);
)
[~i.width, ~i.height].postln;
i.bounds;
~i.plot;
i.free;

//~i = Image.new( "~/Desktop/eric-128.png");
//~i = Image.new( "~/Desktop/cavern1.png");

(

)

SCDoc.helpSourceDir // Straight Up - good for lettering
(
var duration = 60.0;
var now = 0.0;
var tempo = 120;
var thisPix,data,colorMix,midiKey,noteDur,velocity,timeIncrement;
var omitRepeats = Array.newClear(128);
var filename = SCDoc.helpSourceDir +/+ "images/Swamp.png";
var img =  Image.new(filename);
var m = SimpleMIDIFile( "~/Desktop/Swamp-RGB-mix.mid" );
m.init1(4, tempo, "4/4");
m.timeMode = \seconds;
timeIncrement = duration / img.width;
noteDur = timeIncrement;
img.width.do({ arg x;
	omitRepeats.fill(0);
	img.height.do({ arg y;
		thisPix = img.getPixel(x,y);
		data = Image.pixelToColor(thisPix);
		midiKey = y.linlin(0, (img.height - 1), 109, 21).floor;
		colorMix = (data.red + data.blue + data.green) / 3;
		if( omitRepeats[midiKey] != 1,  {
			velocity = colorMix.linlin(0,1,1,127).floor;
			if(velocity > 1, {
				m.addNote(midiKey,velocity,now,noteDur,0,track:1,sort:false);
				omitRepeats[midiKey] = 1});
		});
	});
	now = now + timeIncrement;
});
"sorting MIDI data".postln;
m.sortMIDIEvents;
m.adjustEndOfTrack;
"writing MIDI file".postln;
m.write;
"wrote file";
)

// INVERSE - good for lettering
(
//var x = ~i.width;
//var y = ~i.height;
var img_w, img_h;
var duration = 60.0;
var timeIncrement;
var now = 0.0;
var upVelo = 0;
var velocity;
var noteDur;
var omitRepeats = Array.newClear(128);
var tempo = 120;
var filename = SCDoc.helpSourceDir +/+ "images/Swamp.png";
var img =  Image.new(SCDoc.helpSourceDir +/+ "images/Swamp.png");
var m = SimpleMIDIFile( "~/Desktop/Swamp-RGB-mix.mid" );
m.init1(4, tempo, "4/4");
m.timeMode = \seconds;
img_w = img.width;
img_h = img.height;
timeIncrement = duration / img_w;
noteDur = timeIncrement;
img_w.do({ arg i;
	omitRepeats.fill(0);
	img_h.do({ arg j;
		var thisPix = img.getPixel(i,j);
		var data = Image.pixelToColor(thisPix).asArray;
		var colorMix;
		var midikey = j.linlin(0, (img_h - 1), 109, 21).floor;
		data = Color.fromArray(data);
		colorMix = (data.red + data.blue + data.green) / 3;
		if( (colorMix.trunc(0.1) < 0.5) && (omitRepeats[midikey] != 1),  {
			velocity = colorMix.linlin(0.0,1, 127, 1).floor;
			if(velocity > 5, {
			m.addNote( midikey, velocity, now, noteDur, 0, track: 1, sort: false );
				omitRepeats[midikey] = 1; });
		});
	});
	now = now + timeIncrement;
});
"sorting".postln;
m.sortMIDIEvents;
m.adjustEndOfTrack;
"writing file".postln;
m.write;
"wrote file";
)


(
var image = Image.new( "/Users/ericlyon/Desktop/corey-eggs-black.png");
image.height.do({ arg j;
	image.width.do({ arg i;
		var thisPix = image.getPixel(i,j);
		var data = Color.fromArray( Image.pixelToColor(thisPix).asArray );
		var colorMix = data.red + data.blue + data.green;
		postf("% ", colorMix.trunc(0.1) );
	});
	"".postln;
});

)

(
var image = Image.new( "/Users/ericlyon/Desktop/corey-eggs-black.png");
image.plot
)
Color.red

127.reciprocal
(



Server.killAll
s.reboot
(
var x = 12;

128.do({
	arg y;
	var thisPix = ~i.getPixel(x,y);
	postln(Image.pixelToColor(thisPix).asArray);

	// postln(Image.pixelToColor(i.getPixel(x,y)).asArray);
	});
)

("pixel at 0 @ 0:"+Image.pixelToColor(i.getPixel(0,0)).asArray).postln;

60 - (12 *3 ) - 3

21.midicps

(
ControlSpec(
)

3.linlin(0, 127, 21, 109).floor

/*
Open MIDI file
Decide on time scale
Generate 3-track MIDI file

*/

x = Color.black
x.red

Image.resizeModes
~i.width
~i.height

x = Array.newClear(10)

x.fill(0)