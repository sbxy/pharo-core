drawing
encryptedParagraph: paragraph bounds: bounds color: c
	"Draw the given paragraph"
	myCanvas
		encryptedParagraph: paragraph
		bounds: bounds
		color: (self mapColor: c)