visitMethod: aMethod
	aMethod startSequence withAllSuccessorsDo: [ :seq |
		seq do: [ :instruction | instruction accept: self ]].
	^ aMethod