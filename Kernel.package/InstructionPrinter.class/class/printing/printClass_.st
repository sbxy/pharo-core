printClass: class 
	"Create a file whose name is the argument followed by '.bytes'. Store on 
	the file the symbolic form of the compiled methods of the class."
	| file |
	file := FileStream newFileNamed: class name , '.bytes'.
	class selectorsAndMethodsDo: 
		[:sel :meth | 
		file cr; nextPutAll: sel; cr.
		(self on: meth) printInstructionsOn: file].
	file close
	"InstructionPrinter printClass: Parser."
