untested
saveUpdate: doc onFile: fileName
	"Save the update on a local file.  With or without the update number on the front"

	| file fName pos updateDirectory |
	updateDirectory := 'updates' asFileReference.
	updateDirectory ensureDirectory.

	fName := fileName.
	(self updateRemoveSequenceNum) ifTrue:
		[pos := fName findFirst: [:c | c isDigit not].
		fName := fName copyFrom: pos to: fName size].
	
	doc reset; ascii.
	
	file := updateDirectory / fName.
	file exists ifTrue: [ ^ self ].
	
	file writeStreamDo: [ :s|
		s nextPutAll: doc contents].