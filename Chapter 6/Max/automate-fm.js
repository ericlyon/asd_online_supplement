var p = this.patcher;
var note_duration = 5000;

function randomize_all2()
{
var num = p.getnamed( "modulation-index" );
num.message("set", rrand(0.1,4.0));
num.message("bang");
num = p.getnamed( "mc-ratio" );
num.message("set", rrand(0.5,2.0));
num.message("bang");
num = p.getnamed( "feedback" );
num.message("set", rrand(0.0,1.0));
num.message("bang");
rand_envs();
}

function randomize_all()
{
var num = p.getnamed( "modulation-index" );
num.message("set", rrand(0.1,4.0));
num.message("bang");
num = p.getnamed( "mc-ratio" );
num.message("set", rrand(0.5,2.0));
num.message("bang");
rand_envs();
}

function rand_envs()
{
	var ename = "carrier-env";
	rand_env(ename, note_duration);
	ename = "modulator-env";
	rand_env(ename, note_duration);
}

function rand_env(obname, duration)
{
	var env = p.getnamed(obname);
	var segdur;
	var a,d,s,r;
	env.message("clear");
	env.message("setdomain",note_duration);
	a = rrand(50,1500);
	d = rrand(200,500);
	r = rrand(200,2000);
	s = duration - (a+d+r);
	env.message([0,0]);
	env.message("xyc",[a,1.0, rrand(-0.5,0.5) ]);
	env.message("xyc",[a+d,rrand(0.5,0.8), rrand(-0.5,0.5) ]);
	env.message("xyc",[a+d+s,rrand(0.1,0.3), rrand(-0.5,0.5) ]);
	env.message("xyc",[note_duration,0, rrand(-0.5,0.5) ]);
}

function rrand(a,b)
{
    return a + ((b - a) * Math.random());
}