createIconMethodsFromDirectory: directory 
	"Create the methods for the icons.
	(self createIconMethodsFromDirectory: '')."
	| normalSize smallSize |
	normalSize := self normalSizeNames.
	smallSize := self smallSizeNames.
	normalSize , smallSize
		do: [:each | self createIconMethodsFromFile: each directory: directory]..
	self initializeIcons