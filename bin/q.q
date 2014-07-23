loadFile:{[x] value "\\l ",x};
loadPath:{[x]
	$[system"e";
		loadFile[x];
		@[loadFile;x;0b]~0b;
		[
			show "ERROR: Can't load file! - ",x;
			exit[1];
			]
		];
	show "INFO: Loaded file ", x;
	};
