private
buildDiffMorphFromOldString: oldString toNewString: newString contextClass: aClass
 
	|morph| 

	morph :=  DiffMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderStyle: (BorderStyle inset width: 1);
		font: UITheme current  statusFont;
		yourself.

	morph from: oldString
		to: newString
		contextClass: aClass. 
		
	^ morph