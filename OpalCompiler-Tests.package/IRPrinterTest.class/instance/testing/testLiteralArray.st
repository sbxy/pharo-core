testLiteralArray
	| ir |
	ir := IRBuilderTest new testLiteralArray.
	self assert: ir longPrintString =  '
label: 1
pushLiteral: #(#test 4 #you)
returnTop
'