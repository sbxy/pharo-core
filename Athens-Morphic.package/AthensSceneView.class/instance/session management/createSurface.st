createSurface
	| extent |
	extent := self extent asIntegerPoint.
	(scene respondsTo: #createSurface:) ifTrue: [
		surface := scene createSurface: extent.
	  ] ifFalse: [ surface := AthensCairoSurface extent: extent].
