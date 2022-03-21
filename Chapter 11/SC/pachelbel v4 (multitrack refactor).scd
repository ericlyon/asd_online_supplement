(
var now = 0;
var tempo = 90;
var n4 = 60 / tempo; // quarter note
var n8 = n4 / 2; // eigth note
var n16 = n4 / 4; // 16th note
var n32 = n4 / 8; // 32nd note
var n64 = n4 / 16; // 64th note
var n128 = n4 / 32; // 128th note
var n2 = n4 * 2; // half note
var line1 = [78,76,74,73,71,69,71,73];
var line2 = [74,73,71,69,67,66,67,64];
var line3 = [62,66,69,67,66,62,66,64, 62, 59, 62, 69, 67, 71, 69, 67];
var bass = [50,45,47,42,43,38,43,45];
var sectionStartTime = 0.0;
var monoGliss, clust1, clust2;
var velo = 90;
var upVelo = velo;
m = SimpleMIDIFile( "~/Desktop/pachelbel-canon.mid" );
m.init1( 10, tempo, "4/4");
m.timeMode = \seconds;

// FIRST ITERATION

// first layer
now = 0.0;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, n4, upVelo, track: 1, sort: false );
	now = now + n4;
});

// second layer
now = 0.0;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, n4, upVelo, track: 2, sort: false );
	now = now + n4;
});

// third layer
now = 0.0;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, n8, upVelo, track: 3, sort: false );
	now = now + n8;
});

// bass
now = 0.0;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, n4, upVelo, track: 4, sort: false );
	now = now + n4;
});


// SECOND ITERATION

sectionStartTime = n4 * 8;
// first line
now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n16, upVelo, track: 1, sort: false );
		now = now + n16;
	});
});
// second line
now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n16, upVelo, track: 2, sort: false );
		now = now + n16;
	});
});
// third line
now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	2.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n16, upVelo, track: 3, sort: false );
		now = now + n16;
	});
});
// bass line
now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, n4, upVelo, track: 4, sort: false );
	now = now + n4;
});


// THIRD ITERATION

sectionStartTime = n4 * 16;

// first line
now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	8.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 1, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	8.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 2, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 3, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midikey, velo, now, n4, upVelo, track: 4, sort: false );
	now = now + n4;
});

// FOURTH ITERATION

// new patterns
line1 = [74,73,74,62,61,69,64,66,62,74,73,71,73,78,81,83, 79,78,76,79,78,76,74,73,71,69,67,66,64,67,66,64];
line2 = [66,62,64,73,74,78,81,69,71,67,69,66,62,74,74,73];
line3 = [62,66,69,67,66,62,66,64, 62, 59, 62, 69, 67, 71, 69, 67];


sectionStartTime = n4 * 24;
// first line
now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	2.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 1, sort: false );
		now = now + n32;
	});
});
// second line
now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 2, sort: false );
		now = now + n32;
	});
});
// third line
now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,2) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 3, sort: false );
		now = now + n32;
	});
});
// fourth line
now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({ arg i;
		var transpo = i % 2;
		m.addNote( midikey + (12 * transpo) - 12, velo, now, n16, upVelo, track: 4, sort: false );
		now = now + n16;
	});
});
// extra glissando on last bar
monoGliss = [61,62,64,66,67,69,71,73,74,76,78,79,81,83,85,86,88,90,91,93,95,97,98,100,102,103,105,107,109];
now = sectionStartTime + (6 * n4);

monoGliss.do({
	arg midiKey;
	var beat14 = n4 / 14;
	var velo = 90;
	var upVelo = velo;
	m.addNote( midiKey, velo, now, beat14, upVelo, track: 5, sort: false );
	now = now + beat14;
});

// FIFTH ITERATION
sectionStartTime = n4 * 32;

now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	2.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 1, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 2, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 3, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({ arg i;
		var transpo = i % 2;
		m.addNote( midikey + (12 * transpo) - 12, velo, now, n16, upVelo, track: 4, sort: false );
		now = now + n16;
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
			m.addNote( midiKey, velo, now, n16, upVelo, track: 5, sort: false );
		});
		now = now + n16;
	});
});
// fast cluster hammers
now = sectionStartTime  + (7 * n4);
8.do({
	arg i;
	var thisClust;
	var velo = 85;
	var upVelo = velo;
	if( i < 4, { thisClust = clust1}, { thisClust = clust2} );
	thisClust.do({
		arg midiKey;
		m.addNote( midiKey, velo, now, n32, upVelo, track: 5, sort: false );
	});
	now = now + n32;
});


// SIXTH ITERATION



sectionStartTime = n4 * 40;

now = sectionStartTime;
line1.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	2.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 1, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
line2.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 2, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
line3.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({
		var thisKey = midikey + (rrand(-1,3) * 12);
		m.addNote( thisKey, velo, now, n32, upVelo, track: 3, sort: false );
		now = now + n32;
	});
});

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 90;
	var upVelo = velo;
	4.do({ arg i;
		var transpo = i;
		m.addNote( midikey + (12 * transpo) - 12, velo, now, n16, upVelo, track: 4,  sort: false );
		m.addNote( midikey + (12 * transpo), velo, now, n16, upVelo, track: 4, sort: false );
		now = now + n16;
	});
});

// mono glissando
monoGliss = [61,62,64,66,67,69,71,73,74,76,78,79,81,83,85,86,88,90,91,93,95,97,98,100,102,103,105,107];
now = sectionStartTime;
6.do({ arg i;
	var timeInc = n4 / monoGliss.size;
	if( (i % 2) == 0, {
		monoGliss.size.do({ arg j;
			var midiKey = monoGliss[ (monoGliss.size - 1) - j ];
			m.addNote( midiKey, velo, now, n16, upVelo, track: 5, sort: false );
			now = now + timeInc;
		});
	}, {
		monoGliss.size.do({ arg j;
			var midiKey = monoGliss[ j ];
			m.addNote( midiKey, velo, now, n16, upVelo, track: 5, sort: false );
			now = now + timeInc;
		});
	} );
});

// wedge
now = sectionStartTime  + (6 * n4);
// upper glissando
1.do({ arg i;
	var wedge = [62,64,66,67,69,71,73,74,76,78,79,81,83,85,86,88,90,91,93,95,97,98,100,102,103,105,107] ;
	var upWedge =  wedge ++ wedge.reverse;
	var timeInc = n2 / upWedge.size;
	upWedge.do({ arg midiKey;
			m.addNote( midiKey, velo - i, now, timeInc, upVelo, track: 5, sort: false );
			now = now + timeInc;
	});
});
// lower glissando
now = sectionStartTime  + (6 * n4);
1.do({ arg i;
	var wedge = [62,61,59,57,55,54,52,50,49,47,45,43,42,40,38,37,35,33,31,30,28,26];
	var downWedge =  wedge ++ wedge.reverse ;
	var timeInc = n2 / downWedge.size;
	downWedge.do({ arg midiKey;
			m.addNote( midiKey, velo - i, now, timeInc, upVelo, track: 5, sort: false );
			now = now + timeInc;
	});
});


// SEVENTH ITERATION
sectionStartTime = n4 * 48;

line1 = [78,76,74,73,71,69,71,73];
line2 = [74,73,71,69,67,66,67,64];
line3 = [62,66,69,67,66,62,66,64, 62, 59, 62, 69, 67, 71, 69, 67];

// lines 1 + 2
[ line1, line2 ].do({
	arg thisLine, trk;
	now = sectionStartTime;
	thisLine.do({
		arg midikey, barNumber;
		switch( barNumber,
			0, {
				16.do({
					var thisKey = midikey;
					m.addNote( thisKey, velo, now, n64, 0, track: trk+1, sort: false );
					now = now + n64;
				});
			},
			1, {
				8.do({
					var thisKey = midikey + (2.rand * 12);
					m.addNote( thisKey, velo, now, n32, 0, track: trk+1, sort: false );
					now = now + n32;
				});
			},
			2, {
				32.do({ arg i;
					var thisKey = midikey;
					m.addNote( thisKey, 72 + (i * 2), now, n128, 0, track: trk+1, sort: false ); // cresc
					now = now + n128;
				});
			},
			3, {
				8.do({
					var thisKey = midikey + (rrand(-1,1) * 12);
					m.addNote( thisKey, velo, now, n32, 0, track: trk+1, sort: false );
					now = now + n32;
				});
			},
			4, {
				8.do({
					var thisKey = midikey + (rrand(-2,4) * 12);
					m.addNote( thisKey, velo, now, n32, 0, track: trk+1, sort: false );
					now = now + n32;
				});
			},
			5, {
				8.do({
					var thisKey = midikey + (rrand(-2,4) * 12);
					m.addNote( thisKey, velo, now, n32, 0, track: trk+1, sort: false );
					now = now + n32;
				});
			},
			6, {
				16.do({
					var thisKey = midikey + (rrand(-1,3) * 12);
					m.addNote( thisKey, velo, now, n64, 0, track: trk+1, sort: false );
					now = now + n64;
				});
			},
			7, {
				32.do({
					var thisKey = midikey + (rrand(-2,4) * 12);
					m.addNote( thisKey, velo, now, n128, 0, track: trk+1, sort: false );
					now = now + n128;
				});
			},
		);
	});
});


now = sectionStartTime;


line3.do({
	arg midikey, eventNumber;
	var trk = 3;
	switch( eventNumber,
		0, {now = ~reps.(m,midikey, velo, 8, n64, now, trk);},
		1, {now  = ~reps.(m,midikey, velo, 8, n64, now, trk);},
		2, {now = ~rnotes.(m, midikey, velo, 4, n32, now, 0, 1,trk);},
		3, {now = ~rnotes.(m,midikey, velo, 4, n32, now, 0, 1, trk);},
		4, {now = ~cresc.(m,midikey,72, 2, 16, n128, now, trk);},
		5, {now = ~cresc.(m,midikey,72, 2, 16, n128, now, trk);},
		6, {now = ~rnotes.(m,midikey, velo, 16, n128, now, -1, 2, trk);},
		7, {now = ~rnotes.(m,midikey, velo, 16, n128, now, -1, 2, trk);},
		8, { now = ~rnotes.(m,midikey, velo, 16, n128, now, -2, 3, trk); },
		9, { now = ~rnotes.(m,midikey, velo, 16, n128, now, -2, 3, trk); },
		10, { now = ~rnotes.(m,midikey, velo, 16, n128, now, -2, 3, trk); },
		11, { now = ~rnotes.(m,midikey, velo, 16, n128, now, -2, 3, trk); },
		12, { now = ~rnotes.(m,midikey, velo, 16, n128, now, -2, 3, trk); },
		13, { now = ~rnotes.(m,midikey, velo, 16, n128, now, -2, 3, trk); },
		14, { now = ~rnotes.(m,midikey, velo, 16, n128, now, -2, 3, trk); },
		15, { now = ~rnotes.(m,midikey, velo, 16, n128, now, -2, 3, trk); }
	);
});

now = sectionStartTime;

// bass
bass.do({
	arg midikey, barNumber;
	switch( barNumber,
		0, {
			8.do({
				var thisKey = midikey + (2.rand * 12);
				m.addNote( thisKey, velo, now, n32, 0, track: 4, sort: false );
				m.addNote( thisKey - 12, velo, now, n32, 0, track: 4,sort: false );
				now = now + n32;
			});
		},
		1, {
			2.do({
				var thisKey = midikey;
				m.addNote( thisKey, velo, now, n8, 0, track: 4,sort: false );
				m.addNote( thisKey - 12, velo, now, n8, 0, track: 4,sort: false );
				now = now + n8;
			});
		},
		2, {
			8.do({
				var thisKey = midikey + (2.rand * 12);
				m.addNote( thisKey, velo, now, n32, 0, track: 4,sort: false );
				m.addNote( thisKey - 12, velo, now, n32, 0, track: 4,sort: false );
				now = now + n32;
			});
		},
		3, {
			2.do({
				var thisKey = midikey;
				m.addNote( thisKey, velo, now, n8, 0, track: 4,sort: false );
				m.addNote( thisKey - 12, velo, now, n8, 0, track: 4,sort: false );
				now = now + n8;
			});
		},
		4, {
			8.do({
				var thisKey = midikey + (4.rand * 12);
				m.addNote( thisKey, velo, now, n32, 0, track: 4,sort: false );
				m.addNote( thisKey - 12, velo, now, n32, 0, track: 4,sort: false );
				now = now + n32;
			});
		},
		5, {
			8.do({
				var thisKey = midikey + (4.rand * 12);
				m.addNote( thisKey, velo, now, n32, 0, track: 4,sort: false );
				m.addNote( thisKey - 12, velo, now, n32, 0, track: 4,sort: false );
				now = now + n32;
			});
		},
		6, {
			16.do({
				var thisKey = midikey + (4.rand * 12);
				m.addNote( thisKey, velo, now, n64, 0, track: 4,sort: false );
				m.addNote( thisKey - 12, velo, now, n64, 0, track: 4,sort: false );
				now = now + n64;
			});
		},
		7, {
			32.do({
				var thisKey = midikey + (4.rand * 12);
				m.addNote( thisKey, velo, now, n128, 0, track: 4,sort: false );
				m.addNote( thisKey - 12, velo, now, n128, 0, track: 4,sort: false );
				now = now + n128;
			});
		},
	);
});
// bass support

now = sectionStartTime;
bass.do({
	arg midikey;
	var velo = 120;
	var upVelo = velo;
	m.addNote( midikey - 24, velo, now, n4, upVelo, track: 4, sort: false );
	now = now + n4;
});


// downgliss

now = sectionStartTime;
~clustgliss.(m, 32, n32, now, 100, 44, 120, 80, 6, 6);

// fast clusters

now = sectionStartTime + n2 + n8;
~clusters.(m,4, n32, now, 74, 127, 80, 12, 5);
now = sectionStartTime + n2 + n4;
~clusters.(m,4, n32, now, 50, 127, 80, 12, 5);
now = sectionStartTime + n2 + n4 + n8;
~clusters.(m,4, n32, now, 23, 127, 80, 12, 5);

// BIG cluster

now = sectionStartTime  + (4 * n4);
~clustgliss.(m, 12, n64, now, 21, 95, 150, 90, 24, 6);


// Sine gliss
now = sectionStartTime;

~sinegliss.(m, 128, n64, now, 21, 48, 105, 0, 6.0, 7);


// the Funnel

now = sectionStartTime  + (4 * n4);

~funnel.(m, now, 16, n32, 100, 72,56, 39, 55, 5 );
now = sectionStartTime  + (6 * n4);
~funnel.(m, now, 32, n64, 100, 56,108, 55, 21, 5 );
/*
*/
// final chord
// FINAL CHORD
sectionStartTime = n4 * 56;
now = sectionStartTime;

7.do({ arg i;
	var chord =  [ 26, 38, 50, 54 ] + (i * 12);
	var velo = 105;
	chord.do({ arg keyNum;
		m.addNote(keyNum, velo, now, 16.0 * n4, 100,  track: 1, sort: false);
	});
});

// extra note
//m.addNote( 60, 100, now, 8 * n4, 0, track: 8,sort: false );


// [50,62,74,78].do({
// 	arg midiKey;
// 	var velo = 127;
// 	var upVelo = velo;
//
// });
//

"MIDI calculated!".postln;
"Sorting MIDI events".postln;
m.sortMIDIEvents;
"MIDI Events sorted".postln;
m.adjustEndOfTrack;
m.write;
"MIDI File written".postln;
)


// write file
(
"Sorting MIDI events".postln;
m.sortMIDIEvents;
"MIDI Events sorted".postln;
m.adjustEndOfTrack;
m.write;
"MIDI File written".postln;
)

108 - 56

(
~reps = {
	arg m, keyNum, velo, reps, n64, now, trk;
	reps.do({
		m.addNote( keyNum, velo, now, n64, 0, track: trk, sort: false );
		now = now + n64;
	});
	now;
};

~rnotes = {
	arg m, keyNum, velo, reps, tinc, now, minOct, maxOct, trk;
	reps.do({
		var thisKey = keyNum + (rrand(minOct,maxOct) * 12);
		m.addNote( thisKey, velo, now, tinc, 0, track: trk, sort: false );
		now = now + tinc;
	});
	now;
};

~cresc = {
	arg m, keyNum, startVel, incrVel, reps, tinc, now, trk;
	reps.do({ arg i;
		m.addNote( keyNum, startVel + (i * incrVel), now, tinc, 0, track: trk, sort: false ); // cresc
		now = now + tinc;
	});
	now;
};

~clusters = {
	arg m, reps, tinc, now, keyNum, startVel, endVel, thickness, trk;
	var veloIncr = (endVel - startVel) / reps;
	reps.do({ arg i;
		thickness.do({ arg j;
			var velo = (startVel + (veloIncr * i)).floor;
			m.addNote( keyNum + j, velo, now, tinc, 0, track: trk, sort: false );
		});
		now = now + tinc;
	});
	now;
};


~sinegliss = {
	arg m, reps, tinc, now, startKey, endKey, velo,phase, sineSpeed, trk;
	var sineVal, keyNum;
	reps.do({ arg i;
		sineVal = (2 * sineSpeed * (i/reps)).sinPi;
		keyNum = sineVal.linlin(-1,1,startKey,endKey);
		//[sineVal, keyNum].postln;
		m.addNote( keyNum, velo, now, tinc, 0, track: trk, sort: false );
		now = now + tinc;
	});
	now;
};

~clustgliss = {
	arg m, reps, tinc, now, startKey, endKey, startVel, endVel, thickness, trk;
	var veloIncr = (endVel - startVel) / reps;
	var keyIncr = (endKey - startKey) / reps;
	reps.do({ arg i;
		var keyNum = (startKey + (keyIncr * i)).floor;
		thickness.do({ arg j;
			var velo = (startVel + (veloIncr * i)).floor;
			m.addNote( keyNum + j, velo, now, tinc, 0, track: trk, sort: false ); // cresc
		});
		now = now + tinc;
	});
	now;
};

~funnel = {
	arg m, now, reps, tinc, velo, startKey1, endKey1, startKey2, endKey2, trk;
	var increment1 = (endKey1 - startKey1) / reps;
	var increment2 = (endKey2 - startKey2) / reps;
	var floatKey1 = startKey1, floatKey2 = startKey2;
	var fullLength = tinc * reps;
	reps.do({ arg i;
		var noteLength = fullLength - (i * tinc);
		m.addNote( floatKey1.floor, velo, now, noteLength, 0, track: trk, sort: false );
		m.addNote( floatKey2.floor, velo, now, noteLength, 0, track: trk, sort: false );
		floatKey1 = floatKey1 + increment1;
		floatKey2 = floatKey2 + increment2;
		now = now + tinc;
	});
	now;
};
)


/*
				32.do({ arg i;
					var thisKey = midikey;
					m.addNote( thisKey, 72 + (i * 2), now, n128, 0, sort: false ); // cresc
					now = now + n128;
				});
*/


(127 - 40) / 32

