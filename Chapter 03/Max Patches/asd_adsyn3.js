var p = this.patcher;
var objects = [];
var ocnt = 0;
var harmonics = 0;

function hcount(x)
{
	harmonics = x;
}

function build(nharms)
{
	var i,h,v,r,gainer,dax;
	r = p.newdefault(25, 27, "r", "asd.adsyn3.funda");
	r.varname = "freceiver";
	objects[ocnt++] = r;
	gainer = p.newdefault(25, 127, "gain~");
	gainer.varname = "gainer";
	objects[ocnt++] = gainer;
	dax = p.newdefault(25, 285, "ezdac~");
	dax.varname = "dax";
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
	harmonics = nharms;
}

function destroy()
{
	var obj, i;
	obj = p.getnamed("gainer");
	p.remove(obj);	
	obj = p.getnamed("dax");
	p.remove(obj);	
	obj = p.getnamed("freceiver");
	p.remove(obj);	
	for(i = 0; i < harmonics; i++){
		obj = p.getnamed("asd_fmult" + (i+1) );
		p.remove(obj);
		obj = p.getnamed("asd_gain" + (i+1) );
		p.remove(obj);
		obj = p.getnamed("asd_phase" + (i+1) );
		p.remove(obj);
		obj = p.getnamed("asd_cycler" + (i+1) );
		p.remove(obj);		
	}
	ocnt = 0;
}

function square()
{
	var i;
	var fmult,gain,phase,cycler;
	var sum = 0, rescale;
	for(i = 0; i < harmonics; i++){
		if((i % 2) == 0){
			sum += (1.0/(i+1));
		}
	}
	rescale = 1.0 / sum;
	for(i = 0; i < harmonics; i++){
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
	var fmult,gain,phase,cycler;
	var sum = 0, rescale;
	for(i = 0; i < harmonics; i++){
		if((i % 2) == 0){
			sum += 1 / Math.pow( (i+1), 2);
		}
	}
	rescale = 1.0 / sum;
	for(i = 0; i < harmonics; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		gain = p.getnamed("asd_gain" + (i+1));
		phase = p.getnamed("asd_phase" + (i+1));
		cycler = p.getnamed("asd_cycler" + (i+1));
		p.connect(phase,0,cycler,3);
		fmult.set(i+1);
		if((i % 2) == 0){
			gain.set(rescale/Math.pow( (i+1), 2) ); 
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
	var fmult,gain,phase,cycler;
	var sum = 0,rescale;
	
	for(i = 0; i < harmonics; i++){
		sum += (1.0 /(i+1));
	}
	rescale = 1.0 / sum;
	for(i = 0; i < harmonics; i++){
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
	var fmult,gain,phase,cycler;
	var sum = 0,rescale;
	for(i = 0; i < harmonics; i++){
		sum += 1.0;
	}
	rescale = 1.0 / sum;
	for(i = 0; i < harmonics; i++){
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
	for(i = 0; i < harmonics; i++){
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

function stretcher(fac)
{
	var i;
	var fmult;
	for(i = 0; i < harmonics; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		fmult.set( 1 + (i * (1 + fac)) );
		fmult.message("bang");
	}
}

function freq_dev(fac)
{
	var i;
	var fmult;
	for(i = 0; i < harmonics; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		fmult.set( (i + 1) * (1 + randf(-fac,fac)) );
		fmult.message("bang");
	}
}

function randMults(minf,maxf)
{
	var i;
	var fmult, val;
	for(i = 0; i < harmonics; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		fmult.set( randf(minf,maxf) );
		fmult.message("bang");
	}
}

function rand_amps(dbRange)
{
	var i;
	var gain, randDecibels, randAmp, sum = 0, rescale;
	var amps = [];
	
	for(i = 0; i < harmonics; i++){
		randDecibels = randf(-dbRange,0.0);
		randAmp = Math.pow(10.0, randDecibels/20.0); // convert dB to Amp
		sum += randAmp;
		amps[i] = randAmp;
	}
	rescale = 1.0 / sum;
	for(i = 0; i < harmonics; i++){
		amps[i] *= rescale;
	}
	for(i = 0; i < harmonics; i++){
		gain = p.getnamed("asd_gain" + (i+1));
		gain.set( amps[i] );
		gain.message("bang");
	}
}

function randf(rmin,rmax) {
 	return rmin + (Math.random() * (rmax - rmin));
}
