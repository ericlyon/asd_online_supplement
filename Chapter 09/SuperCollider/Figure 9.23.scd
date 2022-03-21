~restore_buttons = {
	var button_matrix = ~interface[\button_matrix];
	~dm[\instr_count].do({
		arg i;
		~pat[\tick_count].do({
			arg j;
			button_matrix[i,j].value = ~pat[\attack_matrix] [i, j];
		});
	});
};