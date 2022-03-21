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