autowatch = 1;
var p = this.patcher;
var dmpat = {};
var dmglobal = {};
var preset_storage = [];
var base_h = 300;
var base_v = 800;

dmpat["bar_beats"] = 4;
dmpat["beat_subdiv"] = 4;

function initialize_matrix()
{
	var i,j;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var toggle_matrix = [];	
	var pan_matrix = [];
	var rate_matrix = [];
	var reverse_matrix = [];
	var amp_matrix = [];

	for(i = 0; i < labels.length; i++){
		toggle_matrix[i] = [];
		pan_matrix[i] = [];
		for(j = 0; j < atk_count; j++){
			toggle_matrix[i][j] = 0;
			pan_matrix[i][j] = 0.5;
			rate_matrix[i][j] = 1;
			reverse_matrix[i][j] = 0;
			amp_matrix[i][j] = 1;
		}
	}
	dmpat["toggle_matrix"] = toggle_matrix;
	dmpat["pan_matrix"] = pan_matrix;
	dmpat["rate_matrix"] = rate_matrix;
	dmpat["reverse_matrix"] = reverse_matrix;
	dmpat["amp_matrix"] = amp_matrix;
}

function store( slot )
{
	var i,j;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var toggle_matrix = dmpat["toggle_matrix"];
	var pan_matrix = dmpat["pan_matrix"];
	var rate_matrix = dmpat["rate_matrix"];
	var reverse_matrix = dmpat["reverse_matrix"];
	var amp_matrix = dmpat["amp_matrix"];
	var toggle, obj;
	
	if( slot < 0 ){
		post("store: index must be at least zero.", slot, "is not.\n");
		return;
	}
	dmpat["slot"] = slot;
	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			toggle_matrix[i][j] = toggle.getvalueof();
			obj = p.getnamed("pan" + i + "_" + j);
			pan_matrix[i][j] = obj.getvalueof();
			obj = p.getnamed("rate" + i + "_" + j);
			rate_matrix[i][j] = obj.getvalueof();
			obj = p.getnamed("reverse" + i + "_" + j);
			reverse_matrix[i][j] = obj.getvalueof();
			obj = p.getnamed("amp" + i + "_" + j);
			amp_matrix[i][j] = obj.getvalueof();
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
	reset_amp();
	reset_pan();
	reset_rate();
	reset_reverse();
	update_matrix();
}

function randfill(fillodds){
	var i,j, toggle;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
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
	reset_amp();
	reset_pan();
	reset_rate();
	reset_reverse();
	update_matrix();
}

function randpan(){
	var i,j, toggle, pan;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;

	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			if(toggle.getvalueof() == 1){
				pan = p.getnamed("pan" + i + "_" + j);
				pan.set(Math.random());
			}	
		}
	}
}

function randreverse(odds){
	var i,j, toggle, pan;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var reverse;
	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			if(toggle.getvalueof() == 1){
				reverse = p.getnamed("reverse" + i + "_" + j);
				if(Math.random() < odds){ 
					reverse.set(1); 
				} else { 
					reverse.set(0); 
				}
			}	
		}
	}
}



function randrate(minrate, maxrate){
	var i,j, toggle, obj;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;

	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			if(toggle.getvalueof() == 1){
				obj = p.getnamed("rate" + i + "_" + j);
				obj.set(randf(minrate,maxrate));
			}	
		}
	}
}

function randamp(minamp, maxamp){
	var i,j, toggle, obj;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;

	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			if(toggle.getvalueof() == 1){
				obj = p.getnamed("amp" + i + "_" + j);
				obj.set(randf(minamp,maxamp));
			}	
		}
	}
}

function linefill(fillodds, i){
	var j, toggle;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
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

function generic_reset(base, value) {
	var i,j, toggle, obj;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			obj = p.getnamed(base + i + "_" + j);
			obj.set(value);
		}
	}
}

function reset_pan(){
	generic_reset("pan",0.5);
}

function reset_amp(){
	generic_reset("amp",1.0);
}

function reset_rate(){
	generic_reset("rate",1.0);
}

function reset_reverse(){
	generic_reset("reverse",0);
}

function mate( slot1, slot2 )
{
	var i,j;
	var labels;
	var bar_beats;
	var beat_subdiv;
	var atk_count;
	var dmpat1, dmpat2;
	var toggle_matrix1, toggle_matrix2, tmchoice;
	var toggle;
	
	if( typeof( preset_storage[slot1] ) == "undefined" ){
		post("Preset is undefined at slot", slot1,"\n");
	} else if( typeof( preset_storage[slot2] ) == "undefined" ) {
		post("Preset is undefined at slot", slot2,"\n");
	} else {
		dmpat1 = JSON.parse(JSON.stringify(preset_storage[slot1]));
		dmpat2 = JSON.parse(JSON.stringify(preset_storage[slot2]));
	 	labels = dmglobal["labels"];
	 	bar_beats = dmpat["bar_beats"];
	 	beat_subdiv = dmpat["beat_subdiv"];
	 	atk_count = bar_beats * beat_subdiv;
	 	toggle_matrix1 = dmpat1["toggle_matrix"];
	 	toggle_matrix2 = dmpat2["toggle_matrix"];
		for(i = 0; i < labels.length; i++){
			if(Math.random() > 0.5) {
				tmchoice = toggle_matrix1;
			} else {
				tmchoice = toggle_matrix2;
			}
			for(j = 0; j < atk_count; j++){
				toggle = p.getnamed("toggle" + i + "_" + j);
				toggle.set(tmchoice[i][j]);
			}
		}
	}
}


function recall( slot, update_flag )
{
	var i,j;
	var labels;
	var bar_beats;
	var beat_subdiv;
	var atk_count;
	var toggle_matrix, pan_matrix, rate_matrix, reverse_matrix, amp_matrix;
	var toggle, obj;
	
	if( typeof( preset_storage[slot] ) == "undefined" ){
		post("Preset is undefined at slot", slot, "\n");
	} else {
		dmpat = JSON.parse(JSON.stringify(preset_storage[slot]));
	 	labels = dmglobal["labels"];
	 	bar_beats = dmpat["bar_beats"];
	 	beat_subdiv = dmpat["beat_subdiv"];
	 	atk_count = bar_beats * beat_subdiv;
	 	toggle_matrix = dmpat["toggle_matrix"];
	 	pan_matrix = dmpat["pan_matrix"];
	 	rate_matrix = dmpat["rate_matrix"];
	 	reverse_matrix = dmpat["reverse_matrix"];
	 	amp_matrix = dmpat["amp_matrix"];
		for(i = 0; i < labels.length; i++){
			for(j = 0; j < atk_count; j++){
				toggle = p.getnamed("toggle" + i + "_" + j);
				toggle.set(toggle_matrix[i][j]);
				obj = p.getnamed("pan" + i + "_" + j);
				obj.set(pan_matrix[i][j]);
				obj = p.getnamed("rate" + i + "_" + j);
				obj.set(rate_matrix[i][j]);
				obj = p.getnamed("reverse" + i + "_" + j);
				obj.set(reverse_matrix[i][j]);
				obj = p.getnamed("amp" + i + "_" + j);
				obj.set(amp_matrix[i][j]);
			}
		}
	}
	if( update_flag == 1){
		update_matrix();
	}
	
}


function rand_rotate(extent)
{
	var i,j;
	var labels;
	var bar_beats;
	var beat_subdiv;
	var atk_count;
	var toggle, offset, dex, val, this_line = [];
	
	labels = dmglobal["labels"];
	bar_beats = dmpat["bar_beats"];
	beat_subdiv = dmpat["beat_subdiv"];
	atk_count = bar_beats * beat_subdiv;
	for(i = 0; i < labels.length; i++){
		offset = randi(-extent, extent);
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			this_line[j] = toggle.getvalueof();
		}
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			dex = (j + offset);
			if(dex < 0) {dex += atk_count};
			if(dex >= atk_count) {dex -= atk_count};
			val = this_line[dex];
			toggle.set(val);
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
	var obj, subp, target, duration, panval, ampval, rate, reverse;
	var toggle;
	var global_gains = dmglobal["global_gains"];
	beat_cnt--;
	subdiv_cnt--;
	j = (beat_cnt * bar_beats) + subdiv_cnt;
	for(i = 0; i < labels.length; i++){
		toggle = p.getnamed("toggle" + i + "_" + j);

		if( toggle.getvalueof() == 1){
			obj = p.getnamed("pan" + i + "_" + j);
			panval = obj.getvalueof();
			obj = p.getnamed("rate" + i + "_" + j);
			rate = obj.getvalueof();
			obj = p.getnamed("reverse" + i + "_" + j);
			reverse = obj.getvalueof();
			obj = p.getnamed("amp" + i + "_" + j);
			ampval = obj.getvalueof() * global_gains[i];
			// ampval = obj.getvalueof();
			obj = p.getnamed("player_" + i);
			subp = obj.subpatcher();
			duration = durations[i]
			target = subp.getnamed("msgroute");
			target.message("amp",ampval);
			target.message("pan",panval);
			if( reverse == 0){
				target.message("play",0,duration,duration/rate);
			} else {
				target.message("play",duration,0,duration/rate);
			}
			
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
	var preset, txt;
	var i = 0;
	file.open();
	txt = file.readline(32768);
	dmglobal = JSON.parse(txt);
	while(file.position < file.eof){
		txt = file.readline(32768);
		preset = JSON.parse( txt );
		preset_storage[i++] = preset;
	}
	file.close();
	reload_buffers();
	initialize_matrix();
	post("Read", i, "drum patterns from file", filename, "\n");
}

function update_matrix()
{
	var i, j;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var toggle, togval;
	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			togval = toggle.getvalueof();
			// pan
			obj = p.getnamed("pan" + i + "_" + j);
			if(togval == 1) {
				obj.message("bgcolor",0.133, 0.0156, 0.996, 1);
			} else {
				obj.message("bgcolor",0.992, 0.694, 0.980, 1);
			}
			// rate
			obj = p.getnamed("rate" + i + "_" + j);
			if(togval == 1) {
				obj.message("bgcolor",0.227, 0.788, 0.133, 1);
			} else {
				obj.message("bgcolor",0.988, 1.0, 0.49, 1);
			}
			// reverse
			obj = p.getnamed("reverse" + i + "_" + j);
			if(togval == 1) {
				obj.message("bgcolor",0.984, 0.317, 0.109, 1);
			} else {
				obj.message("bgcolor",1.0, 1.0, 0.713, 1);
			}
			// amp
			obj = p.getnamed("amp" + i + "_" + j);
			if(togval == 1) {
				obj.message("bgcolor",0.984, 0.062, 0.243, 1);
			} else {
				obj.message("bgcolor",0.792, 0.964, 0.996, 1);
			}
		}
	}
}

function hide_interface() {
	hide_toggle(1);
	hide_pan(1);
	hide_rate(1);
	hide_reverse(1);
	hide_amp(1);
}
function select_display(x){
	var display_choice = [1,1,1,1,1];
	display_choice[x] = 0;
	hide_toggle(display_choice[0]);
	hide_pan(display_choice[1]);
	hide_rate(display_choice[2]);
	hide_reverse(display_choice[3]);
	hide_amp(display_choice[4]);
	update_matrix();
}

function generic_hide(base, state){
	var i, j;
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var obj;
	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			obj = p.getnamed(base + i + "_" + j);
			obj.hidden = state;
		}
	}

}
function hide_toggle(state)
{
	generic_hide("toggle",state);
}

function hide_pan(state)
{
	generic_hide("pan",state);
}

function hide_rate(state)
{
	generic_hide("rate",state);
}

function hide_reverse(state)
{
	generic_hide("reverse",state);
}

function hide_amp(state)
{
	generic_hide("amp",state);
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
	var toggle, panfloat, obj;

	for(i = 0; i < labels.length; i++){
		for(j = 0; j < atk_count; j++){
			toggle = p.getnamed("toggle" + i + "_" + j);
			if( toggle.valid ){ p.remove(toggle);}
			panfloat = p.getnamed("pan" + i + "_" + j);
			if( panfloat.valid ){ p.remove(panfloat); }
			obj = p.getnamed("rate" + i + "_" + j);
			if( obj.valid ){ p.remove(obj);}
			obj = p.getnamed("reverse" + i + "_" + j);
			if( obj.valid ){ p.remove(obj);}
			obj = p.getnamed("amp" + i + "_" + j);
			if( obj.valid ){ p.remove(obj);}
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

function build_matrix() {
	var labels = dmglobal["labels"];
	var bar_beats = dmpat["bar_beats"];
	var beat_subdiv = dmpat["beat_subdiv"];
	var atk_count = bar_beats * beat_subdiv;
	var toggle_matrix = [];
	var pan_matrix = [];
	var rate_matrix = [];
	var reverse_matrix = [];
	var amp_matrix = [];
	var label_comments = [];
	var global_gains = [];
	var i,j;
	var toggle, panfloat, ratefloat, ampfloat;
	var h = 20, v = 20, toff = 20, flo_off = 50;
	var dmh_offset = 140;
	for(i = 0; i < labels.length; i++){
		toggle_matrix[i] = new Array(atk_count);
		pan_matrix[i] = new Array(atk_count);
		rate_matrix[i] = new Array(atk_count);
		reverse_matrix[i] = new Array(atk_count);
		amp_matrix[i] = new Array(atk_count);
		global_gains[i] = 1.0;
		for(j = 0; j < atk_count; j++){
			toggle = p.newdefault(dmh_offset + h + (j * toff),v, "toggle");
			toggle.varname = "toggle" + i + "_" + j;
			panfloat = p.newdefault(dmh_offset + h + (j * flo_off),v, "flonum");
			panfloat.varname = "pan" + i + "_" + j;
			panfloat.set(0.5);
			ratefloat = p.newdefault(dmh_offset + h + (j * flo_off),v, "flonum");
			ratefloat.varname = "rate" + i + "_" + j;
			ratefloat.set(1.0);
			toggle = p.newdefault(dmh_offset + h + (j * toff),v, "toggle");
			toggle.varname = "reverse" + i + "_" + j;
			ampfloat = p.newdefault(dmh_offset + h + (j * flo_off),v, "flonum");
			ampfloat.varname = "amp" + i + "_" + j;
			ampfloat.set(1.0);
		}
		label_comments[i] = p.newdefault(h,v,"comment");
		label_comments[i].set(i + " " + labels[i]);
		label_comments[i].varname = "label_" + i;
		v += toff;
	}
	dmpat["toggle_matrix"] = toggle_matrix;
	dmpat["pan_matrix"] = pan_matrix;
	dmpat["rate_matrix"] = rate_matrix;
	dmpat["reverse_matrix"] = rate_matrix;
	dmpat["amp_matrix"] = amp_matrix;
	dmpat["label_comments"] = label_comments;
	dmglobal["global_gains"] = global_gains;
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

function set_global_gain(index, gain){
	dmglobal["global_gains"][index] = gain;
}

function set_all_global_gains(){
var i;
	for(i = 0; i < arguments.length; i++){	
		dmglobal["global_gains"][i] = arguments[i];
	}
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
	build_matrix();
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
			obj = p.newdefault(h,v,"asd.playmono2",labels[i]);
		} else if(chans == 2){
			obj = p.newdefault(h,v,"asd.playstereo2",labels[i]);
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

function randi(minval, maxval) {
	var range = maxval - minval;
	var rval = (Math.random() * 1048576) % range;
	return Math.round(minval + rval);
}

function randf(minval,maxval)
{
    return (minval + (maxval - minval) * Math.random());
}

