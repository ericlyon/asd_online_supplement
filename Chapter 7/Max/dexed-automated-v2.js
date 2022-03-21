var preset = {};
var patches = [];
var preset_storage = [];
var keys;
var keycnt = 0;
var allkeys = [];


set_keys();

var preset_storage_file = "/Users/ericlyon/Documents/FM_presets2.json";


function populate_keys(str){
	allkeys[keycnt++] = str;
	post("added", allkeys[keycnt-1],"\n");
}

function get_external_parameters() {
	var i;
	for(i = 0; i < keycnt; i++){
		outlet(0, "get", i+1);
	}
}

function load_external_key(index, value){
	var testkey = allkeys[index - 1];
	preset[testkey] = value;
	post("loaded key", testkey, "\n");
}

/*
function reset_storage_file(new_path)
{
post(new_path, "\n");
}
*/
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

function mate(slot1, slot2){
	var preset1, preset2;	
	if( typeof( preset_storage[slot1] ) == "undefined" ){	
		post("Preset is undefined at slot", slot, "\n");
		return;
	} else {
		preset1 = JSON.parse(JSON.stringify(preset_storage[slot1]));
	}
	if( typeof( preset_storage[slot2] ) == "undefined" ){	
		post("Preset is undefined at slot", slot, "\n");
		return;
	} else {
		preset2 = JSON.parse(JSON.stringify(preset_storage[slot2]));
	}
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		if( Math.random() < 0.5){
			preset[key] = preset1[key];
		} else {
			preset[key] = preset2[key];
		}
		outlet(0, key, preset[key]);
	}
}

function blend(slot1, slot2, algo, blend_factor){
	var preset1, preset2, blendval;	
	if( typeof( preset_storage[slot1] ) == "undefined" ){	
		post("Preset is undefined at slot", slot, "\n");
		return;
	} else {
		preset1 = JSON.parse(JSON.stringify(preset_storage[slot1]));
	}
	if( typeof( preset_storage[slot2] ) == "undefined" ){	
		post("Preset is undefined at slot", slot, "\n");
		return;
	} else {
		preset2 = JSON.parse(JSON.stringify(preset_storage[slot2]));
	}
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		if(key == "ALGORITHM"){
			if(algo == 0){
				preset[key] = preset1[key];
			} else {
				preset[key] = preset2[key];
			}
		} else {
			preset[key] = (blend_factor * preset2[key]) + ((1 - blend_factor) * preset1[key]);
			outlet(0, key, preset[key]);
		}
	}
}

function set_keys() {
	var i, cnt = 0;	
	keys = [];
	keys[cnt++] = "ALGORITHM";
	keys[cnt++] = "FEEDBACK";	
	for(i = 0; i < 6; i++){
		keys[cnt++] = "OP" + (i+1) + " EG RATE 1";
		keys[cnt++] = "OP" + (i+1) + " EG RATE 2";
		keys[cnt++] = "OP" + (i+1) + " EG RATE 3";
		keys[cnt++] = "OP" + (i+1) + " EG RATE 4";
		keys[cnt++] = "OP" + (i+1) + " EG LEVEL 1";
		keys[cnt++] = "OP" + (i+1) + " EG LEVEL 2";
		keys[cnt++] = "OP" + (i+1) + " EG LEVEL 3";
		keys[cnt++] = "OP" + (i+1) + " EG LEVEL 4";
		keys[cnt++] = "OP" + (i+1) + " OUTPUT LEVEL";
		keys[cnt++] = "OP" + (i+1) + " F COARSE";
		keys[cnt++] = "OP" + (i+1) + " F FINE";
		keys[cnt++] = "OP" + (i+1) + " OSC DETUNE";
	}	
	post("Generated Keys for Storage\n");	
}


function nudge(dev)
{
	var key;
	var i;
	var curval;
	for(i = 0; i < keys.length; i++){
		key = keys[i];
		if((key != "ALGORITHM") && (key.indexOf("COARSE") == -1) ){
			curval = preset[key];
			newval = curval + randf(-0.5 * dev, 0.5 * dev);
			if(newval < 0){
				newval = 0;
			} 
			else if(newval > 1){
				newval = 1;
			}
			preset[key] = newval;
			outlet(0, key, preset[key]);
		}
	}
}

function generate2(topCoarse, topFine, maxDetune)
{
	var key;
	var i;
	// set algorithm
	key = "ALGORITHM";
	preset[key] = randf(0.0,1.0);
	outlet(0, key, preset[key]);
	// set feedback level
	key = "FEEDBACK";
	preset[key] = randf(0.0,1.0);
	outlet(0, key, preset[key]);
	for(i = 0; i < 6; i++){
		key = "OP" + (i+1) + " EG RATE 1";
		preset[key] = randf(0.6,1);
		outlet(0, key, preset[key]);
		key = "OP" + (i+1) + " EG RATE 2";
		preset[key] = randf(0.7,0.9);
		outlet(0, key, preset[key]);
		key = "OP" + (i+1) + " EG RATE 3";
		preset[key] = randf(0.4,0.6);
		outlet(0, key, preset[key]);
		key = "OP" + (i+1) + " EG RATE 4";
		preset[key] = randf(0.6,0.9);
		outlet(0, key, preset[key]);
		// set envelope levels
		key = "OP" + (i+1) + " EG LEVEL 1";
		preset[key] = randf(0.1,1.0);
		outlet(0, key, preset[key]);
		key = "OP" + (i+1) + " EG LEVEL 2";
		preset[key] = randf(0.5,1.0);
		outlet(0, key, preset[key]);
		key = "OP" + (i+1) + " EG LEVEL 3";
		preset[key] = randf(0.5, 0.9);
		outlet(0, key, preset[key]);
		key = "OP" + (i+1) + " EG LEVEL 4";
		preset[key] = 0.0;
		outlet(0, key, preset[key]);
		// set OSC output levels
		key = "OP" + (i+1) + " OUTPUT LEVEL";
		preset[key] = randf(0.95,1.0);
		outlet(0, key, preset[key]);
		// Coarse tuning
		key = "OP" + (i+1) + " F COARSE";
		preset[key] = randf( 0.0 ,(topCoarse/32) );
		outlet(0, key, preset[key]);
		// fine tuning	
		key = "OP" + (i+1) + " F FINE";
		preset[key] = randf( 0.0, topFine);
		outlet(0, key, preset[key]);
		// OSC detune
		key = "OP" + (i+1) + " OSC DETUNE";
		preset[key] = 0.5 + randf(-0.5 * maxDetune, 0.5 * maxDetune);
		outlet(0, key, preset[key]);	
	}				
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
	preset_storage = [];
	preset = {};
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

function save_preset_file(filename)
{
	var file = new File(filename,"write","JSON");
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
	post("Wrote FM data to file", filename, "\n");
}

function read_preset_file(filename)
{
	var file = new File(filename,"read","JSON");
	var pst, txt;
	var i = 0;
	file.open();
	while(file.position < file.eof){
		txt = file.readline(32768);
		pst = JSON.parse( txt );
		preset_storage[i++] = pst;
	}
	
	file.close();
	post(i, "patterns read from file", filename, "\n");
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
	// post(match, "\n");
}
/*
function testarr()
{
	var arr = [];
	arr[2] = "freak";
	post( typeof(arr[0]) == "undefined", "\n");
	post( typeof(arr[2]) == "undefined", "\n");
}
*/
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

// introduce this to book
function randf(minv,maxv)
{
    return (minv + (maxv - minv) * Math.random());
}