noteTopWindowIn: aWorld
	"Activate the expected top window"
	
	aWorld ifNil: [^ self].
	aWorld submorphsDo: [:m |
		(m isSystemWindow and: [m isCollapsed not]) ifTrue: [
			^m activate]]