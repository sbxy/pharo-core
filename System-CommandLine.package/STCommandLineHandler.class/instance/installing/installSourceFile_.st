installSourceFile: aReference
	"Install the the source file given by aFileReference"
	| codeImporter |

	" parse the code given in the source file"
	aReference readStreamDo: [ :stream |
		self 
			handleErrorsDuring: [ 
				codeImporter := CodeImporter fileStream: stream.
				codeImporter skipShebang parseDeclarations ]
			reference: aReference ].
	
	"evaluate the declarations in a second step to allow for properly closing the source file stream"
	self 
		handleErrorsDuring: [ codeImporter evaluate ]
		reference: aReference.