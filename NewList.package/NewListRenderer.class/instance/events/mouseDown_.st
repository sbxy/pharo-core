mouseDown: event

	| selectors |
	
	(self enabled and: [ event yellowButtonPressed ])  "First check for option (menu) click"
		ifTrue: [
			self isMultipleSelection
				ifTrue: [ 
					event commandKeyPressed
						ifFalse: [ "right click" 
							(self yellowButtonActivity: event shiftPressed) 
								ifTrue: [ ^ self ]]]
				ifFalse: [ (self yellowButtonActivity: event shiftPressed) 
				ifTrue: [ ^ self ]]].	

	self mouseDownIndex: (self indexAtLocation: event position).

	selectors := Array 
		with: #click:
		with: (self handlesDoubleClick ifTrue: [ #doubleClick: ])
		with: nil
		with: (self dragEnabled ifTrue: [ #startDrag: ] ifFalse:[ nil ]).
		
	event hand waitForClicksOrDrag: self event: event selectors: selectors threshold: 10.