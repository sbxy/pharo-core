updateScrollBarButtonAspect: aMorph color: aColor 
	"update aMorph with aColor"
	| fill direction |
	aMorph isNil ifTrue: [^ self].
	aMorph color: aColor.
