checkClass: aContext 
	((aContext selectedClass includesSelector: #=) and: [ (aContext selectedClass includesSelector: #hash) not ]) ifTrue: [ result addClass: aContext selectedClass ]