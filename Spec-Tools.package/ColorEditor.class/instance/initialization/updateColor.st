updateColor

	| newColor |
	newColor := Color r: r value g: g value b: b value range: 256.
	newColor := newColor alpha: (a value) / 256.
	r color: (Color r: r value g: 0 b: 0 range: 256).
	g color: (Color r: 0 g: g value b: 0 range: 256).
	b color: (Color r: 0 g: 0 b: b value range: 256).
	self color: newColor.
	morph color: newColor