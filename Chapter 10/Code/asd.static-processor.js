autowatch = 1;
var p = this.patcher;
var objs = [];
var ocnt = 0;
var h = 20, v = 20;
var pcount = 0;
var current_processor;

function build_io() {
	var in1 = p.newdefault(h,v,"inlet");
	var in2 = p.newdefault(h + 50,v,"inlet");
	var out1 = p.newdefault(h,v + 400,"outlet");
	var out2 = p.newdefault(h + 50,v + 400,"outlet");
	in1.varname = "inlet1";
	in2.varname = "inlet2";
	out1.varname = "outlet1";
	out2.varname = "outlet2";
	objs[ocnt++] = in1;
	objs[ocnt++] = in2;
	objs[ocnt++] = out1;
	objs[ocnt++] = out2;
	v += 50;
}

function ring_unit() {
	var freq1 = randf(200,1500);
	var freq2 = randf(200,1500);
	var unit = p.newdefault(h,v,"asd.ring_unit",freq1,freq2);
	if(pcount == 0){
		var inlet1 = p.getnamed("inlet1");
		var inlet2 = p.getnamed("inlet2");
		p.connect(inlet1,0,unit,0);
		p.connect(inlet2,0,unit,1);
	} else {
		p.connect(current_processor,0,unit,0);
		p.connect(current_processor,1,unit,1);
	}
	unit.rect =[h,v,h+400,v+9];
	objs[ocnt++] = unit;
	current_processor = unit;
	pcount++;
}

function clear(){
	var i;	
	for(i = 0; i < ocnt; i++){
		p.remove(objs[i]);
	}
	h = 20; v = 20;
	pcount = 0;
}

function build_processors() {

}

function randf(minv,maxv)
{
    return(0, minv + (maxv - minv) * Math.random());
}
