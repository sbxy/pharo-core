restrictedBrowseClasses: classes

	| newEnvironment |
	newEnvironment := self browsedEnvironment forClasses: classes.
	self model class 
		openOnClass:self selectedClass 
		inEnvironment: newEnvironment 