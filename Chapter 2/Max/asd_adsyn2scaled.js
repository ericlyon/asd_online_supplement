var p = this.patcher;
var objects = [];
var ocnt = 0;
var partials = 0;

function build(nharms)
{
	var i,h,v,r,gainer,dax;
	r = p.newdefault(25, 27, "r", "asd.adsyn2.funda");
	objects[ocnt++] = r;
	gainer = p.newdefault(25, 127, "gain~");
	objects[ocnt++] = gainer;
	dax = p.newdefault(25, 285, "ezdac~");
	objects[ocnt++] = dax;
	p.connect(gainer,0,dax,0);
	p.connect(gainer,0,dax,1);
	for(i = 0; i < nharms; i++){
		var fmult = p.newdefault(52 + (i * 191), 57, "flonum");
		var gain = p.newdefault(106 + (i * 191), 57, "flonum");
		var phase = p.newdefault(162 + (i * 191), 57, "flonum");
		var cycler = p.newdefault(25 + (i * 191), 93, "asd_pharmonic");
		fmult.varname = "asd_fmult" + (i+1);
		gain.varname = "asd_gain" + (i+1);
		phase.varname = "asd_phase" + (i+1);
		cycler.varname = "asd_cycler" + (i+1);
		objects[ocnt++] = fmult;
		objects[ocnt++] = gain;
		objects[ocnt++] = phase;
		objects[ocnt++] = cycler;
		p.connect(cycler,0,gainer,0);
		p.connect(r,0,cycler,0);
		p.connect(fmult,0,cycler,1);
		p.connect(gain,0,cycler,2);
	}
	partials = nharms;
}

function destroy()
{
	var i;
	for(i = 0; i < ocnt; i++){
		p.remove(objects[i]);
	}
	ocnt = 0;
}

function square()
{
	var i;
	var fmult,gain,phase,cycler,sum = 0,rescale;
	for(i = 0; i < partials; i++){
		if((i % 2) == 0){
			sum += (1.0/(i+1));
		}
	}
	rescale = 1.0 / sum;
	for(i = 0; i < partials; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		gain = p.getnamed("asd_gain" + (i+1));
		phase = p.getnamed("asd_phase" + (i+1));
		cycler = p.getnamed("asd_cycler" + (i+1));
		p.connect(phase,0,cycler,3);
		fmult.set(i+1);
		if((i % 2) == 0){
			gain.set(rescale/(i+1));
			phase.set(-0.25);
		} else {
			gain.set(0);
		}
		fmult.message("bang");
		gain.message("bang");
		phase.message("bang");
		p.disconnect(phase,0,cycler,3);
	}
}

function triangle()
{
	var i;
	var fmult,gain,phase,cycler,sum = 0,rescale;
	for(i = 0; i < partials; i++){
		if((i % 2) == 0){
			sum += 1 / Math.pow( (i+1), 2);
		}
	}
	rescale = 1.0 / sum;
	for(i = 0; i < partials; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		gain = p.getnamed("asd_gain" + (i+1));
		phase = p.getnamed("asd_phase" + (i+1));
		cycler = p.getnamed("asd_cycler" + (i+1));
		p.connect(phase,0,cycler,3);
		fmult.set(i+1);
		if((i % 2) == 0){
			gain.set(rescale/Math.pow( (i+1), 2)); // squared
			phase.set(0.0);
		} else {
			gain.set(0);
		}
		fmult.message("bang");
		gain.message("bang");
		phase.message("bang");
		p.disconnect(phase,0,cycler,3);
	}
}

function sawtooth()
{
	var i;
	var fmult,gain,phase,cycler,sum = 0,rescale;
	for(i = 0; i < partials; i++){
		sum += (1.0 /(i+1));
	}
	rescale = 1.0 / sum;
	for(i = 0; i < partials; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		gain = p.getnamed("asd_gain" + (i+1));
		phase = p.getnamed("asd_phase" + (i+1));
		cycler = p.getnamed("asd_cycler" + (i+1));
		p.connect(phase,0,cycler,3);
		fmult.set(i+1);
		gain.set(rescale/(i+1));
		phase.set(-0.25);
		fmult.message("bang");
		gain.message("bang");
		phase.message("bang");
		p.disconnect(phase,0,cycler,3);
	}
}

function pulse()
{
	var i;
	var fmult,gain,phase,cycler,sum = 0,rescale;
	for(i = 0; i < partials; i++){
		sum += (1.0);
	}
	rescale = 1.0 / sum;
	for(i = 0; i < partials; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		gain = p.getnamed("asd_gain" + (i+1));
		phase = p.getnamed("asd_phase" + (i+1));
		cycler = p.getnamed("asd_cycler" + (i+1));
		p.connect(phase,0,cycler,3);
		fmult.set(i+1);
		gain.set(rescale);
		phase.set(-0.25);
		fmult.message("bang");
		gain.message("bang");
		phase.message("bang");
		p.disconnect(phase,0,cycler,3);
	}
}

function sine()
{
	var i;
	var fmult,gain,phase,cycler;
	for(i = 0; i < partials; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		gain = p.getnamed("asd_gain" + (i+1));
		phase = p.getnamed("asd_phase" + (i+1));
		cycler = p.getnamed("asd_cycler" + (i+1));
		p.connect(phase,0,cycler,3);
		fmult.set(i+1);
		if(i == 0){
			gain.set(1); // squared
			phase.set(-0.25);
		} else {
			gain.set(0);
		}
		fmult.message("bang");
		gain.message("bang");
		phase.message("bang");
		p.disconnect(phase,0,cycler,3);
	}
}