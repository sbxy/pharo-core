condenseChanges
	"Move all the changes onto a compacted sources file."
	"Smalltalk condenseChanges"
	| f file oldChanges |
	f := FileStream fileNamed: 'ST80.temp'.
	f header; timeStamp.
	'Condensing Changes File...'
		displayProgressFrom: 0
		to: self classNames size + self traitNames size
		during: [:bar | | count | 
			count := 0.
			self
				allClassesAndTraitsDo: [:classOrTrait | 
					bar current: (count := count + 1).
					classOrTrait moveChangesTo: f.
					classOrTrait putClassCommentToCondensedChangesFile: f.
					classOrTrait classSide moveChangesTo: f]].
	self lastQuitLogPosition: f position.
	f trailer; close.
	CompiledMethod cleanUp.
	
	oldChanges := SourceFiles at: 2.
	oldChanges close.
	
	(oldChanges name , '.old') asFileReference delete.
	(file := oldChanges name asFileReference) renameTo: file basename, '.old'.
	f name asFileReference renameTo: file basename.
	
	self setMacFileInfoOn: oldChanges name.
	SourceFiles
		at: 2
		put: (FileStream oldFileNamed: oldChanges name)