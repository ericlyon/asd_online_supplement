~build_pattern_window = {
	var h = 20, v = 20;
	var hadv;
	var instr_count = ~dm[\instr_count];
	var tick_count  = ~pat[\tick_count] ;
	var subdiv = ~pat[\tsig_subdiv];
	var button_matrix = Array2D.new(instr_count,tick_count);
	var name_texts = Array.newClear(instr_count);
	var color1 = Color.white;
	var color2 = Color.black;
	var w = Window.new( "Drum Machine III",Rect(550,800, 700, 600));
	w.front;
	instr_count.do({
		arg j;
		hadv = 100 / subdiv;
		name_texts[j] = StaticText.new(w, Rect(20, v, 160, 20) );
		name_texts[j].string = ~dm[\names][j];
		h = 180;
		tick_count.do({
			arg i;
			button_matrix[j,i] = Button(w, Rect(h, v, 20, 20));
			button_matrix[j,i].states =  [ ["", Color.black, color1],  ["", Color.black, color2]];
			h = h + hadv;
		});
		v = v + 25;
	});
	~interface = Dictionary.new;
	~interface[\w] = w;
	~interface[\name_texts] = name_texts;
	~interface[\button_matrix] = button_matrix;
	~update_button_actions.();
};