error handling
deprecated: anExplanationString
	"this is not itself deprecated, but a compatibility method for old-style deprecation"
	^ self deprecated: anExplanationString on: 'unknown'  in: 'unkown'