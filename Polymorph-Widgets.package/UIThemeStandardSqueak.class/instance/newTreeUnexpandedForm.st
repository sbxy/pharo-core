initialize-release
newTreeUnexpandedForm
	"Answer a new form for an unexpanded tree item."

	^(Form
		extent: 10@9
		depth: 8
		fromArray: #( 4294967041 4294967295 4294901760 4294967041 33554431 4294901760 4294967041 1224867839 4294901760 4294967041 1229521407 4294901760 4294967041 1229539585 4294901760 4294967041 1229521407 4294901760 4294967041 1224867839 4294901760 4294967041 33554431 4294901760 4294967041 4294967295 4294901760)
		offset: 0@0)
			asFormOfDepth: Display depth;
			replaceColor: Color white withColor: Color transparent;
			yourself