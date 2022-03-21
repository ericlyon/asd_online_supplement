~recall_dm_configuration = {
	Dialog.openPanel{
		arg path;
		~dm = Object.readArchive(path);
		~sfbufs = [];
		~dm[\instr_count].do({
			arg i;
			~sfbufs  = ~sfbufs.add( Buffer.read(s, ~dm[\fullPaths][i]));
		});
		~initialize_front_end.();
	};
};