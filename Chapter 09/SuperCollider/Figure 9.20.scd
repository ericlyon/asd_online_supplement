~clear = {
	~dm[\instr_count].do({
		arg i;
		~pat[\tick_count].do({
			arg j;
			~pat[\attack_matrix][i, j] = 0;
			~interface[\button_matrix][i, j].value = 0;
		});
	});
};