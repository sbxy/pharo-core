doubleClick

	| class |
	self level = 1
		ifTrue: [
			self model level = 2
				ifTrue:[class := self getClass].
			self model level = 3
				ifTrue:[class := (self childNodeFromItem: (self childrenItems first)) getClass]]
		ifFalse: [
			class := self getClass].
		Smalltalk tools browser
			fullOnClass: class selector: nil
	