testIndirectArgumentObjectFirstBoundsFailure
	| array |
	array := Object new.
	self should: [ self returnOop1Of: array ] raise: NBFFICalloutError.
