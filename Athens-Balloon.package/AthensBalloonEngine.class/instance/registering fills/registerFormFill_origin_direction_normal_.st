registerFormFill: form origin: orig direction: dir normal: norm

	forms := forms copyWith: form.
	form unhibernate.
	currentFill := self primAddBitmapFill: form
			colormap: (form colormapIfNeededForDepth: 32)
			tile: true "shall we always tile? "
			from: orig
			along: dir
			normal: norm
			xIndex: forms size.
			
