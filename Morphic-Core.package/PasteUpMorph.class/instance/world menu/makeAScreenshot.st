makeAScreenshot
	| filePrefix |
	filePrefix :=  'PharoScreenshot'.
	(UIManager default
		chooseFrom: {'The entire world' translated. 'A selected area' translated}
		values: #(#world #area )
		message: 'What do you want to shoot? (File will be saved in image directory)' translated
		title: 'Make a screenshot')
		ifNotNil: [:choice | 
				|form |
				form := choice = #world
							ifTrue: [World imageForm]
							ifFalse: [Form fromUser].		
				PNGReadWriter
						putForm: form
						onFileNamed: (FileSystem workingDirectory / filePrefix , 'png') nextVersion] 
							
		