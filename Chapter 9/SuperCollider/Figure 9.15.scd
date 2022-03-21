~initialize_dm_from_directory = {
	Buffer.freeAll;
	~dm = Dictionary.new;
	~dm[\sfdurs] = [];
	~dm[\chans] = [];
	~dm[\fullPaths] = [];
	~dm[\names] = [];
	~dm[\allpats] = Array.newClear(64); // maximum number of patterns to store
	~dm[\current_pattern] = nil;
	~dm[\next_pattern] = nil;
	~dm[\processor_odds] = Array.fill(9,{1});
	~dm[\tempo]= 120;
	~dm[\min_rate] = 0.9;
	~dm[\max_rate] = 1.1;
	~dm[\retro_odds] = 0.2;
	~dm[\blend_min] = 0.01;
	~dm[\blend_max] = 0.35;
	~sfbufs = [];
	FileDialog({
		arg path;
		var folder = PathName.new(path);
		folder.filesDo({|aFile|
			var match = ["aif","aiff","wav","WAV"];
			var fileOk = false;
			var info = aFile.fileName.splitext;
			match.do({|testStr| if( info[1] == testStr, {fileOk = true}) });
			if(fileOk, { ("loading" + aFile.fileName).postln;
				~sfbufs = ~sfbufs.add( Buffer.read(s, aFile.fullPath, action:{
					arg buf;
					~dm[\sfdurs] = ~dm[\sfdurs].add(buf.numFrames / buf.sampleRate);
					~dm[\chans] = ~dm[\chans].add(buf.numChannels);
					~dm[\fullPaths] = ~dm[\fullPaths].add(aFile.fullPath);
					~dm[\names] = ~dm[\names].add( info[0] );
				}) );
			});
		});
		~dm[\instr_count] = ~sfbufs.size;
		~dm[\global_gains] = Array.fill(~dm[\instr_count],{0.25});
	},
	fileMode: 2,
	stripResult: true
	);
};