checkMethodsForClass: aClass 	
	context selectedClass: aClass.
	^environment 
		selectorsForClass: aClass
		do: [:each | 
			context selector: each.
			rule checkMethod: context.
			methodBlock value]