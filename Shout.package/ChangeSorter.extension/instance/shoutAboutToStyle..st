*Shout-Styling
shoutAboutToStyle: aPluggableShoutMorphOrView 
	self shoutIsModeStyleable
		ifFalse: [^ false].
	currentSelector
		ifNil: [^ false].
	aPluggableShoutMorphOrView classOrMetaClass: self selectedClassOrMetaClass.
	^ true