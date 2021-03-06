selectedMessage
	"Answer a copy of the source code for the selected message."

	| class selector method |
	contents == nil ifFalse: [^ contents copy].

	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	method := class compiledMethodAt: selector ifAbsent: [^ ''].	"method deleted while in another project"
	currentCompiledMethod := method.
	^ contents :=  self sourceStringPrettifiedAndDiffed
	