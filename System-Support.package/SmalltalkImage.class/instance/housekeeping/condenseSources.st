condenseSources	
	"Move all the changes onto a compacted sources file."
	"Smalltalk condenseSources"

	| f newVersionString  |
	
	Smalltalk vm isRunningCogit
		ifTrue: [ self error: 'Sources cannot be condensed in a Cog (JIT enabled) Virtual Machine. Try a Stack VM.' ].
	
	self fixUpProblemsWithAllCategory.
	"The above removes any concrete, spurious '-- all --' categories, which mess up the process."
	newVersionString := UIManager default request: 'Please designate the version
for the new source code file...' initialAnswer: Smalltalk  sourceFileVersionString.
	newVersionString ifNil: [^ self].
	newVersionString = self sourceFileVersionString ifTrue:
		[^ self error: 'The new source file must not be the same as the old.'].
	Smalltalk sourceFileVersionString: newVersionString.

	"Write all sources with fileIndex 1"
	f := FileStream newFileNamed: Smalltalk sourcesName.
	f header; timeStamp.
'Condensing Sources File...'
	displayProgressFrom: 0 to: self classNames size + self traitNames size
	during:
		[:bar | | count | count := 0.
		Smalltalk allClassesAndTraitsDo:
			[:classOrTrait | bar current: (count := count + 1).
			classOrTrait fileOutOn: f moveSource: true toFile: 1]].
	f trailer; close.
	
	"Make a new empty changes file"
	self closeSourceFiles.
	Smalltalk changesFile renameTo:  Smalltalk changesFile basename, '.old'.
	
	(FileStream newFileNamed: Smalltalk changesName)
		header; timeStamp; close.
	self lastQuitLogPosition: 0.

	self setMacFileInfoOn: Smalltalk image changesName.
	self setMacFileInfoOn: Smalltalk image sourcesName.
	self openSourceFiles.
	self inform: 'Source files have been rewritten!
Check that all is well,
and then save/quit.'