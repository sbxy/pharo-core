fullOnClass: class 	selector: selector highlight: autoSelectString
	| nautilus |
	
	nautilus := self fullOnClass: class selector: selector.
	autoSelectString ifNotNil: [ nautilus ui highlight: autoSelectString ]