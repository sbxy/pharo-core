selectAndBrowseFile: aFileList
	"When no file are selected you can ask to browse several of them"

	| selectionPattern files |
	selectionPattern := UIManager default request:'What files?' initialAnswer: '*.cs;*.st'.
	selectionPattern ifNil: [selectionPattern := String new].
	files := (aFileList directory filesMatching: selectionPattern).
	self browseFiles: files.


