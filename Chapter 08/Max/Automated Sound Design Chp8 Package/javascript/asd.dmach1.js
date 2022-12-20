autowatch = 1;
var p = this.patcher;
var dmpat = {};
var dmglobal = {};
var preset_storage = [];
var base_h = 300;
var base_v = 800;

dmpat["bar_beats"] = 4;
dmpat["beat_subdiv"] = 4;



function store( slot )
{
	var i,j;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var toggle_matrix = dmpat["toggle_matrix"];
	var toggle;
	
	if( slot < 0 ){
		post("store: index must be at least zero.", slot, "is not.\n");
		return;
	}
	dmpat["slot"] = slot;
	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			toggle_matrix[i][j] = toggle.getvalueof();
		}
	}
	preset_storage[slot] = JSON.parse(JSON.stringify(dmpat));
}


function clear(){
	var i,j, toggle;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var toggle_matrix = dmpat["toggle_matrix"];
	var atk_count = bar_beats * beat_subdiv;

	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			toggle.set(0);
		}
	}
}

function randfill(fillodds){
	var i,j, toggle;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	// var toggle_matrix = dmpat["toggle_matrix"];
	var atk_count = bar_beats * beat_subdiv;

	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			if( Math.random() <= fillodds){
				toggle.set(1);
			} else{
				toggle.set(0);
			}	
		}
	}
}

function linefill(fillodds, i){
	var j, toggle;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	// var toggle_matrix = dmpat["toggle_matrix"];
	var atk_count = bar_beats * beat_subdiv;

	for(j = 0; j < atk_count; j++){
		toggle = p.getnamed("toggle" + i + "_" + j);
		if( Math.random() <= fillodds){
			toggle.set(1);
		} else{
			toggle.set(0);
		}	
	}
}


function recall( slot )
{
	var i,j;
	var labels;
	var bar_beats;
	var beat_subdiv;
	var atk_count;
	var toggle_matrix;
	var toggle;
	
	if( typeof( preset_storage[slot] ) == "undefined" ){
		post("Preset is undefined at slot", slot, "\n");
	} else {
		dmpat = JSON.parse(JSON.stringify(preset_storage[slot]));
	 	labels = dmglobal["labels"];
	 	bar_beats = dmpat["bar_beats"];
	 	beat_subdiv = dmpat["beat_subdiv"];
	 	atk_count = bar_beats * beat_subdiv;
	 	toggle_matrix = dmpat["toggle_matrix"];
		for(i = 0; i < labels.length; i++){
			for(j = 0; j < atk_count; j++){
				toggle = p.getnamed("toggle" + i + "_" + j);
				toggle.set(toggle_matrix[i][j]);
			}
		}
	}
}


function fire_samples(beat_cnt, subdiv_cnt){
	var i, j;
	var labels = dmglobal["labels"];
	var players = dmglobal["players"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var toggle_matrix = dmpat["toggle_matrix"];
	var durations = dmglobal["durations"];
	var obj, subp, target, duration;
	var toggle;
	beat_cnt--;
	subdiv_cnt--;
	j = (beat_cnt * bar_beats) + subdiv_cnt;
	for(i = 0; i < labels.length; i++){
		toggle = p.getnamed("toggle" + i + "_" + j)
		if( toggle.getvalueof() == 1){
			obj = p.getnamed("player_" + i);
			subp = obj.subpatcher();
			duration = durations[i]
			target = subp.getnamed("msgroute");
			target.message("play",0,duration,duration);
		}
	}
}

function save_preset_file(filename)
{
	var file = new File(filename,"write","JSON");
	var i;
	var str;
	file.open();
	str = JSON.stringify(dmglobal);
	file.writeline(str);
	post("Storing", preset_storage.length, "drum patterns\n");
	for(i = 0; i < preset_storage.length; i++){
		if( typeof( preset_storage[i] ) != "undefined" ){
			str = JSON.stringify(preset_storage[i]);
			file.writeline(str);
		}
	}
	file.close();
	post("Wrote Drum Machine data to file", filename, "\n");
}

function read_preset_file(filename)
{
	var file = new File(filename,"read","JSON");
	var pst, txt;
	var i = 0;
	file.open();
	txt = file.readline(32768);
	pst = JSON.parse(txt);
	dmglobal = pst;
	while(file.position < file.eof){
		txt = file.readline(32768);
		pst = JSON.parse( txt );
		preset_storage[i++] = pst;
	}
	file.close();
	reload_buffers();
	post("Read", i, "drum patterns from file", filename, "\n");
}

function hide_toggles(state)
{
	var i, j;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	toggle_matrix = dmpat["toggle_matrix"];
	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			if( toggle_matrix[i][j].valid ){
				toggle_matrix[i][j].hidden = state;
			}
		}
	}
}

function destroy_interface()
{
	var i, j;
	var labels = dmglobal["labels"];
	var label_comments = dmglobal["label_comments"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var players = dmglobal["players"];
	var buffers = dmglobal["buffers"];
	var buffer,player,label;
	toggle_matrix = dmpat["toggle_matrix"];

	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			if( toggle.valid ){
				p.remove(toggle);
			}
		}
		label = p.getnamed("label_" + i);
		if( label.valid ){
			p.remove(label);
		}	
		buffer = p.getnamed("buffer_" + i);	
		if( buffer.valid ){
			p.remove(buffer);
		}
		player = p.getnamed("player_" + i);	
		if( player.valid ){
			p.remove(player);
		}			

	}
}

function build_toggle_matrix()
{
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var toggle_matrix = [];
	var label_comments = [];
	var i,j;
	var toggle;
	var h = 20, v = 20, toff = 20;
	var dmh_offset = 120;
	for(i = 0; i < labels.length; i++){
		toggle_matrix[i] = new Array(atk_count);
		for(j = 0; j < atk_count; j++){
			toggle = p.newdefault(dmh_offset + h + (j * toff),v, "toggle");
			toggle.varname = "toggle" + i + "_" + j;
			toggle_matrix[i][j] = 0;
		}
		label_comments[i] = p.newdefault(h,v,"comment");
		label_comments[i].set(labels[i]);
		label_comments[i].varname = "label_" + i;
		v += toff;
	}
	dmpat["toggle_matrix"] = toggle_matrix;
	dmpat["label_comments"] = label_comments;
}

function build_buffers(folder_pathname){
	var f = new Folder(folder_pathname);
	var h = base_h,v = base_v;
	var i;
	var buffers = [];
	var full_pathnames = [];
	var labels = [];
	f.typelist = [ "WAVE" , "AIFF" ]; 
	  while (!f.end) {
	  	if(f.filename != ""){
	  		labels[labels.length] = f.filename;
	  	}
		f.next();
	  }
	f.close;
	for(i = 0; i < labels.length; i++){
		var full_pathname = folder_pathname + labels[i];
		var label = labels[i];
		var b_chans, b_frames;
		buffers[i] = p.newdefault(h,v,"buffer~", label);
		buffers[i].message("replace",full_pathname);
		buffers[i].varname = "buffer_" + i;
		v+=20;
		full_pathnames[i] = full_pathname;
	}
	dmglobal["labels"] = labels;
	dmglobal["folder_pathname"] = folder_pathname;
	dmglobal["buffers"] = buffers;
	dmglobal["full_pathnames"] = full_pathnames;
}

function reload_buffers(){
	var i;
	var labels = dmglobal["labels"];
	var full_pathnames = dmglobal["full_pathnames"];

	for(i = 0; i < labels.length; i++){
		var full_pathname = full_pathnames[i];
		var label = labels[i];
		var buftest;
		buftest = new Buffer(label);
		buftest.send("replace",full_pathname);
	}
}

function build_interface(pathname){
	build_buffers(pathname);
	build_players();
	build_toggle_matrix();
	// increments array
	// amplitudes array
	// GUI
	// Transport
}

function build_players(){
	var labels = dmglobal["labels"];
	var i, vchans, buf_obj;
	var h = base_h + 200,v = base_v;
	var players = [];
	var durations = [];
	var obj;
	for(i = 0; i < labels.length; i++){
		buf_obj = new Buffer(labels[i]);
		chans = buf_obj.channelcount();
		if(chans == 1){
			obj = p.newdefault(h,v,"asd.playmono",labels[i]);
		} else if(chans == 2){
			obj = p.newdefault(h,v,"asd.playstereo",labels[i]);
		} else {
			post(labels[i], ":", chans, " not a valid channel count\n");
		}
		durations[i] = buf_obj.length();
		obj.varname = "player_" + i;
		players[i] = obj;
		v += 20;
	}
	dmglobal["players"] = players;
	dmglobal["durations"] = durations;
}

