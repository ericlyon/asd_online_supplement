(
var now = 0;
var tempo = 90;
var qbeat = 60 / tempo;
var ebeat = qbeat / 2;
var beat16th = qbeat / 4;
var beat32nd = qbeat / 8;
var line1 = [78,76,74,73,71,69,71,73];
var line2 = [74,73,71,69,67,66,67,64];
var line3 = [62,66,69,67,66,62,66,64, 62, 59, 62, 69, 67, 71, 69, 67];
var bass = [50, 45, 47, 42, 43, 38, 43, 45];
var sectionStartTime = 0.0;
var monoGliss, clust1, clust2;
m = SimpleMIDIFile( "~/Desktop/pachelbel2b.mid" );
m.init0( tempo, "4/4");
m.timeMode = \seconds;

// First Iteration

// first layer
now = 0.0;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, qbeat, upVelo, sort: false );
	now = now + qbeat;
});

// second layer
now = 0.0;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, qbeat, upVelo, sort: false );
	now = now + qbeat;
});

// third layer
now = 0.0;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, ebeat, upVelo, sort: false );
	now = now + ebeat;
});

// bass
now = 0.0;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, qbeat, upVelo, sort: false );
	now = now + qbeat;
});

// SECOND ITERATION

sectionStartTime = qbeat * 8;
// first layer
now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat16th, upVelo, sort: false );
		now = now + beat16th;
	});
});

now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat16th, upVelo, sort: false );
		now = now + beat16th;
	});
});

now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	2.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat16th, upVelo, sort: false );
		now = now + beat16th;
	});
});

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, qbeat, upVelo, sort: false );
	now = now + qbeat;
});


// THIRD ITERATION

sectionStartTime = qbeat * 16;

// first layer
now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	8.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	8.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, qbeat, upVelo, sort: false );
	now = now + qbeat;
});

// FOURTH ITERATION

// new patterns
line1 = [74,73,74,62,61,69,64,66,62,74,73,71,73,78,81,83, 79,78,76,79,78,76,74,73,71,69,67,66,64,67,66,64];
line2 = [66,62,64,73,74,78,81,69,71,67,69,66,62,74,74,73];
line3 = [62,66,69,67,66,62,66,64, 62, 59, 62, 69, 67, 71, 69, 67];

sectionStartTime = qbeat * 24;

now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	2.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({ arg i;
		var transpo = i % 2;
		m.addNote( midikey + (12 * transpo) - 12, velo, now, beat16th, upVelo, sort: false );
		now = now + beat16th;
	});

});
// extra glissando on last bar
monoGliss = [ 61, 62, 64, 66, 67, 69, 71, 73, 74, 76, 78, 79, 81, 83, 85, 86, 88, 90, 91, 93, 95, 97, 98, 100, 102, 103, 105, 107, 109 ];
now = sectionStartTime + (6 * qbeat);

monoGliss.do({
	arg midiKey;
	var beat14 = qbeat / 14;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midiKey, velo, now, beat14, upVelo, sort: false );
	now = now + beat14;
});

// FIFTH ITERATION
sectionStartTime = qbeat * 32;

now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	2.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({ arg i;
		var transpo = i % 2;
		m.addNote( midikey + (12 * transpo) - 12, velo, now, beat16th, upVelo, sort: false );
		now = now + beat16th;
	});
});

// slow cluster hammers
clust1 = [ 26, 28, 30, 31, 33, 35, 37 ];
clust2 = [ 86, 88, 90, 91, 93, 95, 97 ];
now = sectionStartTime;
7.do({ arg i;
	var thisClust;
	var velo = 85;
	var upVelo = velo;
	if( (i%2) == 1, { thisClust = clust1}, { thisClust = clust2} );
	4.do({
		thisClust.do({
			arg midiKey;
			m.addNote( midiKey, velo, now, beat16th, upVelo, sort: false );
		});
		now = now + beat16th;
	});
});

// fast cluster hammers
now = sectionStartTime  + (7 * qbeat);

8.do({
	arg i;
	var thisClust;
	var velo = 85;
	var upVelo = velo;
	if( i < 4, { thisClust = clust1}, { thisClust = clust2} );
	thisClust.do({
		arg midiKey;
		m.addNote( midiKey, velo, now, beat32nd, upVelo, sort: false );
	});
	now = now + beat32nd;
});


// SIXTH ITERATION

sectionStartTime = qbeat * 40;

now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	2.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, beat32nd, upVelo, sort: false );
		now = now + beat32nd;
	});
});

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({ arg i;
		var transpo = i;
		m.addNote( midikey + (12 * transpo) - 12, velo, now, beat16th, upVelo, sort: false );
		m.addNote( midikey + (12 * transpo), velo, now, beat16th, upVelo, sort: false );
		now = now + beat16th;
	});
});


// mono glissando
monoGliss = [ 61, 62, 64, 66, 67, 69, 71, 73, 74, 76, 78, 79, 81, 83, 85, 86, 88, 90, 91, 93, 95, 97, 98, 100, 102, 103, 105, 107 ];

now = sectionStartTime;
6.do({ arg i;
	var timeInc = qbeat / monoGliss.size;
	var velo = 90;
	var upVelo = velo;
	if( (i % 2) == 0, {
		monoGliss.size.do({ arg j;
			var midiKey = monoGliss[ (monoGliss.size - 1) - j ];
			m.addNote( midiKey, velo, now, beat16th, upVelo, sort: false );
			now = now + timeInc;
		});
	}, {
		monoGliss.size.do({ arg j;
			var midiKey = monoGliss[ j ];
			m.addNote( midiKey, velo, now, beat16th, upVelo, sort: false );
			now = now + timeInc;
		});
	} );
});

now = sectionStartTime  + (6 * qbeat);

// wedge

1.do({ arg i;
	var upWedge =  [ 62, 64, 66, 67, 69, 71, 73, 74, 76, 78, 79, 81, 83, 85, 86, 88, 90, 91, 93, 95, 97, 98, 100, 102, 103, 105, 107 ] ++ [ 62, 64, 66, 67, 69, 71, 73, 74, 76, 78, 79, 81, 83, 85, 86, 88, 90, 91, 93, 95, 97, 98, 100, 102, 103, 105 ].reverse;
	var timeInc = (qbeat * 2) / upWedge.size;
	var downWedge =  [ 62, 61, 59, 57, 55, 54, 52, 50, 49, 47, 45, 43, 42, 40, 38, 37, 35, 33, 31, 30, 28, 26 ];
	var velo = 90;
	var upVelo = velo;
	upWedge.do({ arg midiKey;
			m.addNote( midiKey, velo - i, now, qbeat, upVelo, sort: false );
			now = now + timeInc;
	});
});

now = sectionStartTime  + (6 * qbeat);
1.do({ arg i;
	var downWedge =  [ 62, 61, 59, 57, 55, 54, 52, 50, 49, 47, 45, 43, 42, 40, 38, 37, 35, 33, 31, 30, 28, 26 ] ++ [ 62, 61, 59, 57, 55, 54, 52, 50, 49, 47, 45, 43, 42, 40, 38, 37, 35, 33, 31, 30, 28].reverse ;
	var timeInc = (qbeat * 2) / downWedge.size;
	var velo = 90;
	var upVelo = velo;
	downWedge.do({ arg midiKey;
			m.addNote( midiKey, velo - i, now, qbeat, upVelo, sort: false );
			now = now + timeInc;
	});
});

sectionStartTime = qbeat * 40;


[50,62,74,78].do({
	arg midiKey;
	var velo = 127;
	var upVelo = velo;
	m.addNote( midiKey, velo, now, qbeat * 8, upVelo, sort: false );
});


"MIDI calculated!";
)


// write file
(
m.sortMIDIEvents;
"MIDI Events sorted".postln;
m.adjustEndOfTrack;
m.write;
"MIDI File written".postln;
)

m.plot;  // uses ScaledUserView

m.midiEvents.dopostln; // all midi events
m.metaEvents.dopostln; // notice the incorrect 'endOfTrack' events for track 1 & 2;


m.metaEvents.dopostln; // try again

m.tempoMap; // get the tempo map ( [[ startTime, bpm ], [ etc.. ]] )
m.timeSignatures; // get the time signatures ( ( [[ startTime, a/b ], [ etc.. ]] )

~x = m.p.play; // convert to Pattern and play
~x.stop

// now play the file in Quicktime, or open with another app

