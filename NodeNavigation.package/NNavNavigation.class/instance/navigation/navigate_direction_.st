navigate: editor direction: direction
	| newSelection |

	currentEditor  := editor.
	newSelection := direction findSelectionFor: self.
	self textArea selectFrom: newSelection first to: newSelection last.
	self updateState: newSelection .

