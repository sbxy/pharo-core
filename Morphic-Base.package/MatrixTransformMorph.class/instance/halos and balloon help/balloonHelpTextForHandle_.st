balloonHelpTextForHandle: aHandle
	(aHandle eventHandler mouseSelectorsInclude: #changeRotationCenter:with:)
		ifTrue:[^'set center of rotation'].
	^super balloonHelpTextForHandle: aHandle