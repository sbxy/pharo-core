buildCodePanelWithCommentOnBottom
	| splitter delta |
	
	splitter := ProportionalSplitterMorph new beSplitsTopAndBottom.
	delta := 2.

	splitter addLeftOrTop: multipleMethodsEditor.
	splitter addRightOrBottom: commentTextArea.

	sourceCodePanel
		addMorph: multipleMethodsEditor
		fullFrame: ( (0@0 corner: 1@0.5) asLayoutFrame 
						bottomOffset: delta negated).
	sourceCodePanel
		addMorph: splitter
		fullFrame: ( (0@0.5 corner: 1@0.5) asLayoutFrame
						topLeftOffset: 0@(delta negated) ; bottomRightOffset: 0@delta).
	sourceCodePanel 
		addMorph: commentTextArea
		fullFrame: ( (0@0.5 corner: 1@1) asLayoutFrame
						topLeftOffset: (0@delta)).