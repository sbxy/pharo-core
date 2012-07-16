*growl
growlDismissHandleFor: aGrowlMorph
	| handle form image |
	handle := RectangleMorph newBounds: ((3@3) extent: (20@20))  color: Color white.
	handle borderColor: handle color muchDarker.
	handle borderWidth: 1.
	handle wantsYellowButtonMenu: false.
	form := self "haloDismissIcon" windowCloseForm.
	form ifNotNil: [
		image := ImageMorph new.
		image image: form.
		image color: handle color makeForegroundColor.
		image lock.
		handle addMorphCentered: image].
	^ handle