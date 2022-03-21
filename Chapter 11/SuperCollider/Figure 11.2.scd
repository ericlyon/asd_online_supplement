(
var farben = [ [0,8,11,16,21],[0,8,11,17,21],[0,8,11,15,22],[0,9,11,15,20], [0,7,12,15,20],[1,7,10,15,20],[-1,7,10,15,20]] + 48;
var tempo = 64;
var halfNote = (60/tempo) * 2;
var now = 0;
var velocity = 120, upVelo = 0;
m = SimpleMIDIFile( "~/Desktop/farben.mid" );
m.init0( tempo, "4/4");
m.timeMode = \seconds;
farben.do({
	arg chord, i;
	if(i ==6,{
		chord.do({
			arg midikey;
			m.addNote( midikey, velocity, now, halfNote * 4, upVelo );
		});
		now = now + (halfNote * 4);
	},{
		4.do({
			chord.do({
				arg midikey;
				m.addNote( midikey, velocity, now, halfNote, upVelo );
			});
			now = now + halfNote;
		});
	});
});
)