selectedBytecodes
	"Compile the source code for the selected message selector and extract and return
	the bytecode listing."
	| class selector |
	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	contents := class sourceCodeAt: selector.
	contents := self class compiler parse: contents.
	contents := contents generate.
	^ contents symbolic asText