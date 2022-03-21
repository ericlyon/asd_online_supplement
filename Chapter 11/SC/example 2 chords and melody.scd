
(
var k = 1.85;
var dur = 60;
var now = 0;
var itz = 200;
var x = 1.0.rand;
var tint = rrand(0.1,0.13);
var cs = ControlSpec(300,900.0,\exp);
var freq, midikey;
var chord = [0,4,7,11];
var keys = (chord+ 60) ++ (chord + 72) ++ (chord + 48);
var filename = "~/Desktop/midifiletest4.mid";
var chords = [ [0,4,7,11], [0,3,7,10], [0,5,10,15], [0,4,7,8], [0,7,11,14]];

m = SimpleMIDIFile(filename ); // create empty file
m.init1( 3, 120, "4/4" );	// init for type 1 (multitrack); 3 tracks, 120bpm, 4/4 measures

m.timeMode = \seconds;  // change from default to something useful


tint = 0.25;

// second layer
now = 0.0;
tint = 0.125 / 2.0;
while({now < dur},{
//	freq = cs.map((x + 1)/2);
	midikey = [70,71,72,73,74,75,76,77,78,79].choose;
//	x =  (k * x.squared) - 1;
	m.addNote( midikey, rrand(100,127), now, tint, 127,  track: 1 );
	// Synth(\ping,[\freq, freq, \amp, 0.1]);
	// tint = [1/8,1/16,1/5,1/4, 1/32, 1/3].choose;
	now = now + tint;
});

now = 0;
// first layer
	tint = 0.5;
while({now < dur},{
	var thisChord = chords.choose;
	thisChord = thisChord + rrand(48,60);
	thisChord.do({
		arg key;
		m.addNote( key, rrand(64,127), now, tint, 127,  track: 2 );
	});

	now = now + tint;
});

)

(
m.adjustEndOfTrack;
m.write;
)

m.countMIDIEvents

m.midiEvents.dopostln; // all midi events
m.metaEvents.dopostln; // notice the incorrect 'endOfTrack' events for track 1 & 2;

m.adjustEndOfTrack;
m.metaEvents.dopostln; // try again

m.tempoMap; // get the tempo map ( [[ startTime, bpm ], [ etc.. ]] )
m.timeSignatures; // get the time signatures ( ( [[ startTime, a/b ], [ etc.. ]] )

~x = m.p.play; // convert to Pattern and play
~x.stop

m.write; // now play the file in Quicktime, or open with another app

m.plot;  // uses ScaledUserView


443.cpsmidi.round


(
var k = 1.85;
var dur = 60;
var now = 0;
var itz = 200;
var x = 1.0.rand;
var tint = rrand(0.1,0.13);
var cs = ControlSpec(300,900.0,\exp);
fork {
	var freq;
	while({now < dur},{
		freq = cs.map((x + 1)/2);
		x =  (k * x.squared) - 1;
		Synth(\ping,[\freq, freq, \amp, 0.1]);
		now = now + tint;
		tint.wait;
	});
}
)

QuarksGui.new