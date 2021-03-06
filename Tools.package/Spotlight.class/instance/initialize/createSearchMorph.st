createSearchMorph 
	| morph |
	morph := PluggableTextFieldMorph new
		on: self model
			text: #contents
			accept: #contents:
			readSelection: nil
			menu: nil;
		convertTo: String;
		alwaysAccept: true;
		acceptOnCR: true;
		autoAccept: true;
		getEnabledSelector: nil;
		font: Smalltalk ui theme textFont;
		cornerStyle: (Smalltalk ui theme textEntryCornerStyleIn: self);
		hResizing: #spaceFill;
		vResizing: #rigid;
		borderStyle: (BorderStyle inset width: 0);
		color: Color white ;
		selectionColor:  Smalltalk ui theme selectionColor ;
		hideScrollBarsIndefinitely;
		extent: 24@(Smalltalk ui theme textFont height + 8);
		setBalloonText: nil.
		
	morph textMorph: (SpotlightTextMorphForFieldView new
		contents: '';
		yourself).
		
	morph ghostText: 'Search class or method...'.
	morph on: #keyStroke send: #localHandleKeystroke: to: self.
	
	morph textMorph 
		onAnnouncement: MorphLostFocus 
		do: [ self delete ].
	morph textMorph
		autoFit: true;
		wrapFlag: false;
		margins: (2@1 corner: 2@1).
	
	^morph