var preset = {};
var patches = [];
var preset_storage = [];
var keys = ["ALGORITHM", 
"OP1 EG RATE 1", "OP1 EG RATE 2", "OP1 EG RATE 3", "OP1 EG RATE 4", 
"OP1 EG LEVEL 1", "OP1 EG LEVEL 2","OP1 EG LEVEL 3","OP1 EG LEVEL 4",
"OP2 EG RATE 1", "OP2 EG RATE 2","OP2 EG RATE 3", "OP2 EG RATE 4", 
"OP2 EG LEVEL 1", "OP2 EG LEVEL 2","OP2 EG LEVEL 3","OP2 EG LEVEL 4",
"OP3 EG RATE 1", "OP3 EG RATE 2", "OP3 EG RATE 3", "OP3 EG RATE 4", 
"OP3 EG LEVEL 1", "OP3 EG LEVEL 2","OP3 EG LEVEL 3","OP3 EG LEVEL 4",
"OP4 EG RATE 1", "OP4 EG RATE 2","OP4 EG RATE 3", "OP4 EG RATE 4", 
"OP4 EG LEVEL 1", "OP4 EG LEVEL 2","OP4 EG LEVEL 3","OP4 EG LEVEL 4",
"OP5 EG RATE 1", "OP5 EG RATE 2", "OP5 EG RATE 3", "OP5 EG RATE 4", 
"OP5 EG LEVEL 1", "OP5 EG LEVEL 2","OP5 EG LEVEL 3","OP5 EG LEVEL 4",
"OP6 EG RATE 1", "OP6 EG RATE 2","OP6 EG RATE 3", "OP6 EG RATE 4", 
"OP6 EG LEVEL 1", "OP6 EG LEVEL 2","OP6 EG LEVEL 3","OP6 EG LEVEL 4"
];

var preset_storage_file = "/Users/ericlyon/Documents/FM_presets.json";


function reset_storage_file(new_path)
{
post(new_path, "\n");
}

function store( slot )
{
	var rem = slot % 1;
	if(rem != 0 ){
		post("store: argument must be an integer.", slot, "is not an integer.\n");
		return;
	}
	if( slot < 0 ){
		post("store: index must be at least zero.", slot, "is not.\n");
		return;
	}
	preset_storage[slot] = JSON.parse(JSON.stringify(preset));
}

function recall( slot )
{
	if( typeof( preset_storage[slot] ) == "undefined" ){
		post("Preset is undefined at slot", slot, "\n");
	} else {
		preset = JSON.parse(JSON.stringify(preset_storage[slot]));
	}
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		outlet(0, key, preset[key]);
	}
}

function generate()
{
	var key;
	var i;
	var zeromatches = ["OP1 EG LEVEL 4","OP2 EG LEVEL 4","OP3 EG LEVEL 4","OP4 EG LEVEL 4","OP5 EG LEVEL 4","OP6 EG LEVEL 4"];
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		if(matchlist(key,zeromatches)){
			preset[key] = 0.0;
		} else {
			preset[key] = Math.random();
		}
		outlet(0, key, preset[key]);
	}
}	

function testrand()
{
	var pname = "ALGORITHM";
	var val = Math.random();
	outlet(0, pname, val);
	pname = "OP1 EG RATE 1";
	val = Math.random();
	outlet(0, pname, val);
}

function testrand2()
{
	var thong = new Array();
	var key;
	var i;
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		thong[key] = Math.random();
		outlet(0, key, thong[key]);
	}
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		val = thong[key];
		post(key, val, "\n");
	}
}

function testrand3()
{
	var patch = {};
	var key;
	var i;
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		patch[key] = Math.random();
		outlet(0, key, patch[key]);
	}
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		val = patch[key];
		post(key, val, "\n");
	}
	return patch;
}

function addpatch( pnum )
{
	var patch = {};
	var key;

	var i;
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		patch[key] = Math.random();
	}
	patches[pnum] = patch;
}

function loadpatch( pnum )
{
	var patch = patches[pnum];
	var key;
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		outlet(0, key, patch[key]);
	}	
}

function clear_presets()
{
	var preset_storage = [];
}

function write_presets()
{
	var file = new File(preset_storage_file,"write","JSON");
	var str = JSON.stringify(preset_storage);
	var i;
	file.open();
	for(i = 0; i < preset_storage.length; i++){
		if( typeof( preset_storage[i] ) != "undefined" ){
			str = JSON.stringify(preset_storage[i]);
			file.writeline(str);
		}
	}
	file.close();
}

function read_presets()
{
	var file = new File(preset_storage_file,"read","JSON");
	var pst, txt;
	var i = 0;
	file.open();
	while(file.position < file.eof){
		txt = file.readline(32768);
		pst = JSON.parse( txt );
		preset_storage[i++] = pst;
		/*
		if( typeof(txt) != "undefined" ){
			pst = JSON.parse( txt );
			preset_storage[i++] = pst;
		}
		*/
	}
	
	file.close();
	post(i, "patterns read\n");
}

function testmatch(x)
{
	var zeromatches = ["OP1 EG RATE 4","OP2 EG RATE 4","OP3 EG RATE 4","OP4 EG RATE 4","OP5 EG RATE 4","OP6 EG RATE 4"];
	var match = 0;
	var i;
	match = matchlist(x,zeromatches);
	post(match, "\n");
}

function testarr()
{
	var arr = [];
	arr[2] = "freak";
	post( typeof(arr[0]) == "undefined", "\n");
	post( typeof(arr[2]) == "undefined", "\n");
}

function matchlist(x, testlist)
{
	var match = 0;
	var i;
	for(i = 0; i < testlist.length; i++){
		if( x == testlist[i]) {
			match = 1;
		}		
	}
	return match;
}