showOn: aCanvas
	| cString|
	aCanvas setPathMatrix.
	cString := self asString copyWith: (Character value: 0).
	self primShowText: cString on: aCanvas