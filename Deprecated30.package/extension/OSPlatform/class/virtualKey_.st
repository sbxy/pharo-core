virtualKey: virtualKeyCode
	self deprecated: 'Do not refer to OSPlatform directly, use `Smalltalk os` instead' on: '2013-07-22' in: #Pharo30.
	"Subclass responsibility to override if necessary"
	^self current virtualKey: virtualKeyCode