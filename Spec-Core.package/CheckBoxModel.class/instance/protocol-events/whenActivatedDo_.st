whenActivatedDo: aBlock
	<api: #event>
	"This method is used to propagate the event that I have been activated" 
	
	stateHolder whenChangedDo: [:bool | bool ifTrue: aBlock ]