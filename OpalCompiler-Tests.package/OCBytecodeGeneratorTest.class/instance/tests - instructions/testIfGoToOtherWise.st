testIfGoToOtherWise
	| cm symbolic |
	
	cm := IRBytecodeGenerator new
		numArgs: 0;
		numTemps: 1;
		pushTemp: 1;
		pushLiteral: 1;
		if: true goto: #return otherwise: #other;
		label: #other;
		returnTop;
		label: #return;
		returnTop;
		compiledMethod.

	self assert: (cm isCompiledMethod ).
	symbolic := String streamContents: [:str | cm longPrintOn: str ].
	self assert: symbolic =   '13 <10> pushTemp: 0
14 <76> pushConstant: 1
15 <A8 01> jumpTrue: 18
17 <7C> returnTop
18 <7C> returnTop
'