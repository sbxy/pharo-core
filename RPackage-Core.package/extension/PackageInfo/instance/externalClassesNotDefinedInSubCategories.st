externalClassesNotDefinedInSubCategories
	| myClasses |
	myClasses := self classesAndMetaClassesNotDefinedInSubCategories.
	^ Array streamContents:
		[:s |
		ProtoObject withAllSubclassesDo:
			[:class |
			(myClasses includes: class) ifFalse: [s nextPut: class]]]