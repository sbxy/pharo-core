testGlobalVariableDefinition
	| global newClass |
	
	global:= RGFactory current createGlobalVariableNamed: #Transcript.
	
	self assert: (global isGlobalVariable).
	self assert: (global parent = Smalltalk globals).