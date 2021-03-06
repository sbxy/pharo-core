setText
	"Set the src and dst text in the morphs applying
	prettyPrint if required."

	|src dst ctx|
	src := self srcText.
	dst := self dstText.
	ctx := self contextClass.
	(self prettyPrint and: [ctx notNil])
		ifTrue: [src isEmpty ifFalse: [
					src := ctx compiler
						source: src;
						class: ctx;
						format].
				dst isEmpty ifFalse: [
					dst := ctx compiler
						source: dst;
						class: ctx;
						format]].	
	self srcMorph setText: src; font: self theme textFont.
	self dstMorph setText: dst; font: self theme textFont