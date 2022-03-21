var p = this.patcher;
var objects = [];
var ocnt = 0;
var harmonics = 0;
var autowatch = 1;

function hcount(x)
{
	harmonics = x;
}

function build(nharms)
{
	var i,h,v,r,r2,gainer,dax,mrect,hoff;
	r = p.newdefault(25, 27, "r", "asd.adsyn4.funda");
	r.varname = "freceiver";
	r2 = p.newdefault(142, 27, "r", "asd.adsyn4.velo");
	r2.varname = "vreceiver";
	objects[ocnt++] = r;
	gainer = p.newdefault(25, 127, "gain~");
	gainer.varname = "gainer";
	dax = p.newdefault(25, 285, "ezdac~");
	dax.varname = "dax";
	p.connect(gainer,0,dax,0);
	p.connect(gainer,0,dax,1);
	hoff = 300;
	for(i = 0; i < nharms; i++){
		var fmult, gain, phase, cycler, madsr;
		fmult = p.newdefault(52 + (i * hoff), 57, "flonum");
		gain = p.newdefault(106 + (i * hoff), 57, "flonum");
		phase = p.newdefault(162 + (i * hoff), 57, "flonum");
		cycler = p.newdefault(25 + (i * hoff), 93, 
			"asd_epharmonic");
		madsr = p.newdefault(259 + (i * hoff), 27, 
			"multislider");
		fmult.varname = "asd_fmult" + (i+1);
		gain.varname = "asd_gain" + (i+1);
		phase.varname = "asd_phase" + (i+1);
		cycler.varname = "asd_cycler" + (i+1);
		madsr.varname = "asd_madsr" + (i+1);
		madsr.message("size", 3);
		mrect = [ 259 + (i * hoff),27,57,63];
		madsr.message("patching_rect",mrect);
		madsr.message("setminmax",0,5000);
		p.connect(cycler,0,gainer,0);
		p.connect(r,0,cycler,0);
		p.connect(r2,0,cycler,4);
		p.connect(fmult,0,cycler,1);
		p.connect(gain,0,cycler,2);
		p.connect(madsr,0,cycler,5);
	}
	harmonics = nharms;
}


function setminmax(minval,maxval)
{
	var i,multi;
	for(i = 0; i < harmonics; i++){
		multi = p.getnamed("asd_madsr" + (i+1));
		multi.message("setminmax", minval, maxval);
	}
}

function ADSR_all(atk,dk,rls)
{
	var i,multi;
	for(i = 0; i < harmonics; i++){
		multi = p.getnamed("asd_madsr" + (i+1));
		multi.message([atk,dk,rls]);
		multi.message("bang");
	}
}

function ADSR_rand(minenv, maxenv)
{
	var i,multi,atk,dk,rls;
	for(i = 0; i < harmonics; i++){
	atk = randf(minenv, maxenv);
	dk = randf(minenv, maxenv);
	rls = randf(minenv, maxenv);
		multi = p.getnamed( "asd_madsr" + (i+1) );
		multi.message([atk,dk,rls]);
		multi.message("bang");
	}
}

function ADSR_rand2(minAtk, maxAtk, minDk, maxDk, minRls, maxRls)
{
	var i,multi,atk,dk,rls;
	for(i = 0; i < harmonics; i++){
	atk = randf(minAtk, maxAtk);
	dk = randf(minDk, maxDk);
	rls = randf(minRls, maxRls);
		multi = p.getnamed( "asd_madsr" + (i+1) );
		multi.message([atk,dk,rls]);
		multi.message("bang");
	}
}

function ADSR_stretcher(atk,dk,rls,stretchFac)
{
	var i,multi,atk,dk,rls;
	for(i = 0; i < harmonics; i++){
		multi = p.getnamed( "asd_madsr" + (i+1) );
		multi.message([atk,dk,rls]);
		multi.message("bang");
		atk *= (1 + stretchFac);
		dk *= (1 + stretchFac);
		rls *= (1 + stretchFac);
	}
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
	obj = p.getnamed("vreceiver");
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
		obj = p.getnamed("asd_madsr" + (i+1) );
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


function hoffset(fac)
{
	var i;
	var fmult;
	for(i = 0; i < harmonics; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		fmult.set( (i + 1) + fac );
		fmult.message("bang");
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
	var fmult, val;
	for(i = 0; i < harmonics; i++){
		fmult = p.getnamed("asd_fmult" + (i+1));
		val = (i + 1) * (1 + randf(-fac,fac));
		fmult.set( (i + 1) * (1 + randf(-fac,fac)) );
		fmult.message("bang");
	}
}

// try exprand
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

function randAmps(mina,maxa)
{
	var i;
	var gain, randDecibels, randAmp, sum = 0, rescale;
	var amps = [];
	
	for(i = 0; i < harmonics; i++){
		randDecibels = randf(mina,maxa);
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

function rand_amps(dbRange)
{
	var i, gain, randDecibels, randAmp, sum = 0, rescale, amps = [];
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
