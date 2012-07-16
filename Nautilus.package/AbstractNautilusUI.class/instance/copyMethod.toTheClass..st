private
copyMethod: aMethod toTheClass: aClass 
	| newMethod shouldBeInstall |
	
	aMethod realClass = aClass ifTrue: [ ^ self ].
	shouldBeInstall := aClass methodDict
						at: aMethod selector
						ifPresent: [:sel | 
							" here I have to fork to release the drag & drop "
							[ (self openDialogWouldYouInstall: sel into: aClass)
								ifTrue: [ 
									newMethod := aClass compile: aMethod sourceCode classified: aMethod category ]] fork.
							  ]
						ifAbsent: [ 
							newMethod := aClass compile: aMethod sourceCode classified: aMethod category]