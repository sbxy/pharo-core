showHierarchy

	^ showHierarchy ifNil: [ showHierarchy := self class showHierarchy ]