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
var tempo = 120;
m = SimpleMIDIFile( "~/Desktop/image2MIDI-corey-eggs-black.mid" );
m.init1(4, tempo, "4/4");
m.timeMode = \seconds;
)

// GEnerate MIDI Data

(
var x = ~i.width;
var y = ~i.height;
var duration = 60.0;
var timeIncrement = duration / x;
var now = 0.0;
var upVelo = 0;
var velocity;
var noteDur = timeIncrement;
var omitRepeats = Array.newClear(128);
x.do({
	arg i;
	omitRepeats.fill(0);

	y.do({
		arg j;
		var thisPix = ~i.getPixel(i,(y - 1) - j);
		var data = Image.pixelToColor(thisPix).asArray;

		// R value of pixel to MIDI note
		//data.postln;
		var midikey = j.linlin(0, (y - 1), 21, 109).floor;


		data = Color.fromArray(data);
		if( (data.blue   < 0.5) && (omitRepeats[midikey] != 1),  {
			velocity = data.blue.linlin(0.0,1.0, 127, 1).floor;
			[now, midikey, data.blue, velocity].postln;
			m.addNote( midikey, velocity, now, noteDur, 0, track: 1, sort: false );
			omitRepeats[midikey] = 1;
		});
	});
	now = now + timeIncrement;
});

"MIDI calculated!";
)

127.reciprocal
(
"sorting".postln;
m.sortMIDIEvents;
m.adjustEndOfTrack;
"writing".postln;
m.write;
"wrote file";
)

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