annotation: anObject
	"registers gereally are used as single instances, hence putting
	an annotation on the default register will change the annotation
	for all the users. To avoid that, the receiver is copied first"
	^ self copy
		basicAnnotation: anObject;
		yourself