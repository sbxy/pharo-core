echo: aBool
	shouldEcho = aBool ifTrue: [ ^ self ].
	shouldEcho := aBool.
	self enable: #echo.