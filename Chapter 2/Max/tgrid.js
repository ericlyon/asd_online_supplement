var p = this.patcher;
var rows = 16;
var columns = 16;
var objects = [];
var ocnt = 0;


function dimensions(r,c)
{
	rows = r;
	columns = c;
}

function destroy()
{
	var len = objects.length;
	var i;
	for(i = 0; i < len; i++){
		p.remove(objects[i]);
	}
}

function build() 
{
	var i,j;
	var tog, vname;
	ocnt  = 0;
	for(i = 0; i < columns; i++){
		for(j = 0; j < rows; j++){
			tog = p.newdefault(50 + (i * 30) ,50 + (j * 30),"toggle");
			vname = "happyTog" + "c" + i + "r" + j;
			tog.varname = vname;
			objects[ocnt++] = tog;
		}
	}
	post( objects.length, "\n");
}

function resize(dim)
{
	var tog, i,j;
	
	if(dim < 1 || dim > 50 ){
		return;
	}
	
	for(i = 0; i < columns; i++){
		for(j = 0; j < rows; j++){
			vname = "happyTog" + "c" + i + "r" + j;
			tog = p.getnamed(vname);
			tog.message("rect",[50 + (i * 30) ,50 + (j * 30),dim,dim]);
		}
	}
}

function recolor()
{
	var r,g,b;
	var tog, i;
	
	for(i = 0; i < ocnt; i++){
		tog = objects[i];
		r = Math.random();
		g = Math.random();
		b = Math.random();
		tog.message("bgcolor",[r,g,b]);
		r = Math.random();
		g = Math.random();
		b = Math.random();
		tog.message("uncheckedcolor",[r,g,b]);
		r = Math.random();
		g = Math.random();
		b = Math.random();
		tog.message("checkedcolor",[r,g,b]);
	}
}

function rand_color()
{
	var r,g,b;
	var tog, i;
	
	for(i = 0; i < ocnt; i++){
		tog = objects[i];
		r = Math.random();
		g = Math.random();
		b = Math.random();
		tog.message("bgcolor",r,g,b);
		r = Math.random();
		g = Math.random();
		b = Math.random();
		tog.message("uncheckedcolor",r,g,b);
		r = Math.random();
		g = Math.random();
		b = Math.random();
		tog.message("checkedcolor",r,g,b);
	}
}

function same_color()
{
	var tog, i;
	for(i = 0; i < ocnt; i++){
		tog = objects[i];
		tog.message("bgcolor",[41/255,86/255,178/255]);
		tog.message("uncheckedcolor",[128/255,128/255,128/255]);
		tog.message("checkedcolor",[0/255,255/255,127/255]);
	}
}

function randfill(odds)
{
	var tog, i;
	for(i = 0; i < ocnt; i++){
		tog = objects[i];
		if( Math.random() < odds ){
			tog.message(1);
		} else {
			tog.message(0);
		}
	}
}

function invert()
{
	var tog, i;
	for(i = 0; i < ocnt; i++){
		tog = objects[i];
		tog.message("bang");
	}
}