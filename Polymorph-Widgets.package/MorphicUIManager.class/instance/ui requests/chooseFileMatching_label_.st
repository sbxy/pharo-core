chooseFileMatching: patterns label: label
	"Let the user choose a file matching the given patterns"
	
	|modalMorph|
	modalMorph := self modalMorph.
	^modalMorph theme  
		chooseFileNameIn: modalMorph
		title: (label ifNil: ['Choose File' translated])
		patterns: patterns
		path: nil
		preview: false