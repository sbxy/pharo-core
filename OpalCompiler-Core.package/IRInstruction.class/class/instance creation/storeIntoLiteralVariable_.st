storeIntoLiteralVariable: object

	^ IRLiteralVariableAccess new
		association: object;
		store: true;
		yourself