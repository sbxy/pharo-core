as yet unclassified
iconFor: anEntry
	"Answer the icon to use for the directory entry."

	^ anEntry isDirectory
		ifTrue: [self theme smallOpenIcon]
		ifFalse: [(self isImageFile: anEntry basename)
					ifTrue: [self theme smallPaintIcon]
					ifFalse: [self theme smallLeftFlushIcon]]