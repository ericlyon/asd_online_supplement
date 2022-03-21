~store_dm_configuration = {
	Dialog.savePanel({|path|
		~dm.writeArchive(path);
	});
};