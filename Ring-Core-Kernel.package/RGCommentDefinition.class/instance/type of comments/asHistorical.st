asHistorical

	"Sets the receiver as historical object, which will allow itself to retrieve its data using the sourcePointer"
	| realClass |
	self annotationNamed: self class statusKey put: #historical.
	self sourcePointer ifNil:[
		realClass := self realClass.
		realClass notNil ifTrue: [ 
			realClass organization commentRemoteStr
				ifNotNil: [:str | self sourcePointer: str sourcePointer ] ] ]