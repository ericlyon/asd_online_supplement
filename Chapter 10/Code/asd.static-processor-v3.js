autowatch = 1;
var p = this.patcher;
var objs = [];
var ocnt = 0;
var h = 20, v = 20;
// var pcount = 0;
var current_processor;


function build_io() {
	var testobj, in1, in2, out1, out2;
	testobj = p.getnamed("inlet1");
	if(testobj == null){
		in1 = p.newdefault(h,v,"inlet");
		in1.varname = "inlet1";
	}
	testobj = p.getnamed("inlet2");
	if(testobj == null){
		in2 = p.newdefault(h + 50,v,"inlet");
		in2.varname = "inlet2";
	}
	testobj = p.getnamed("outlet1");
	if(testobj == null){
		out1 = p.newdefault(h,v + 600,"outlet");
		out1.varname = "outlet1";
	}
	testobj = p.getnamed("outlet2");
	if(testobj == null){
		out2 = p.newdefault(h + 50,v + 600,"outlet");
		out2.varname = "outlet2";
	}
	v += 50;
}

function build_processor(){
	var options = ["spectralgate_unit", "randreverse_unit",
	"harmonizer_unit","combchord_unit", "alpverb_unit",
	"ring_unit", "bitcrush_unit", "sweep_unit", "transpose_unit",
	"chorus_unit", "stutter_unit"];
	var i, the_function, processor_count;
	var h = 20, v = 20;
	var processor_count = Math.floor(randf(3,7));
	build_io();
	for(i = 0; i < processor_count; i++){
		the_function = options[Math.floor(Math.random()*options.length)];
		eval(the_function)();
	}
	patch_to_output();
}

function stutter_unit() {
	var unit = p.newdefault(h,v,"asd.stutter_unit");
	make_connections(unit);
	unit.rect = [h,v,h+400,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function spectralgate_unit() {
	var unit = p.newdefault(h,v,"asd.spectralgate_unit", randf(1.0,10.0));
	make_connections(unit);
	unit.rect = [h,v,h+400,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function randreverse_unit() {
	var unit = p.newdefault(h,v,"asd.randreverse_unit");
	make_connections(unit);
	unit.rect = [h,v,h+200,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function harmonizer_unit() {
	var rvbtime = randf(1.0,8.0);
	var i, args;
	var options = [[1.25,1.5,1.8888],[ 1.122, 1.334, 1.681 ],
	[1.259, 1.498, 1.681],[1.334, 1.781, 2.378 ],
	[ 0.5, 1.5, 2],[1.059, 1.334, 1.587]];
	args = options[Math.floor(Math.random()*options.length)];
	var unit = p.newdefault(h,v,"asd.harmonizer_unit",args);
	make_connections(unit);
	unit.rect = [h,v,h+1000,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function combchord_unit() {
	var ringtime = randf(0.1,1.0);
	var i, deltime, basefreq, fdbk;
	var args = [];
	var ratios = [3/2,4/3,5/4,6/5,9/8];
	var chord = [1.0];
	for(i = 0; i < 4; i++){
		chord[i+1] = chord[i] * ratios[Math.floor(Math.random()*ratios.length)];
	}
	basefreq = randf(50.0, 440.0);
	for(i = 0; i < 5; i++){
		deltime = 1.0 / (chord[i] * basefreq);
		fdbk = Math.pow(10.0,(-3 * deltime)/ringtime);
		args[i*2] = 1000 * deltime;
		args[(i*2)+1] = fdbk;
	}
	var unit = p.newdefault(h,v,"asd.combchord_unit",args);
	make_connections(unit);
	unit.rect = [h,v,h+1000,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function chorus_unit() {
	var i;
	var args = [];
	for(i = 0; i < 8; i++){
		args[i] = randf(0.5,7.0);
		args[i + 8] = randf(0.7,0.9);
	}
	var unit = p.newdefault(h,v,"asd.chorus_unit",args);
	make_connections(unit);
	unit.rect = [h,v,h+1000,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function alpverb_unit() {
	var rvbtime = randf(1.0,8.0);
	var i;
	var args = [];
	var deltime;
	for(i = 0; i < 10; i++){
		args[i*2] = randf(50.0,500.0);
		deltime = args[i*2] * 0.001; // convert to ms
		args[(i*2)+1] = Math.pow(10.0,(-3 * deltime)/rvbtime);
	}
	var unit = p.newdefault(h,v,"asd.alpverb_unit",args);
	make_connections(unit);
	unit.rect = [h,v,h+1000,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function ring_unit() {
	var freq1 = randf(200,1500);
	var freq2 = randf(200,1500);
	var unit = p.newdefault(h,v,"asd.ring_unit",freq1,freq2);
	make_connections(unit);
	unit.rect = [h,v,h+400,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;

}

function bitcrush_unit() {
	var unit = p.newdefault(h,v,"asd.bitcrush_unit", Math.floor(randf(4,12)));
	make_connections(unit);
	unit.rect = [h,v,h+400,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function sweep_unit() {
	var speed1 = randf(0.5,6.0);
	var speed2 = randf(0.5,6.0);
	var resonance = randf(0.25,0.8);
	var unit = p.newdefault(h,v,"asd.sweep_unit",speed1,speed2,resonance);
	make_connections(unit);
	unit.rect = [h,v,h+400,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function transpose_unit() {
	var tfac = randf(0.1,2.0);
	var unit = p.newdefault(h,v,"asd.transpose_unit",tfac);
	make_connections(unit);
	unit.rect = [h,v,h+400,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
}

function patch_to_output(){
	var outlet1 = p.getnamed("outlet1");
	var outlet2 = p.getnamed("outlet2");
	p.connect(current_processor,0,outlet1,0);
	p.connect(current_processor,1,outlet2,0);
	outlet(0,"bang");
}

function make_connections(unit){
	if(ocnt == 0){
		var inlet1 = p.getnamed("inlet1");
		var inlet2 = p.getnamed("inlet2");
		p.connect(inlet1,0,unit,0);
		p.connect(inlet2,0,unit,1);
	} else {
		p.connect(current_processor,0,unit,0);
		p.connect(current_processor,1,unit,1);
	}
	v += 55;
}

function clear(){
	var i;	
	for(i = 0; i < ocnt; i++){
		if(objs[i].valid){
			p.remove(objs[i]);
		}
	}
	h = 20; v = 20;
	ocnt = 0;
}

function randf(minv,maxv)
{
    return(minv + (maxv - minv) * Math.random());
}
