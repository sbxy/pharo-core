removeHalo
	"remove the receiver's halo (if any)"
	| halo |
	halo := self halo.
	halo
		ifNil: [^ self].
	halo delete.
	self removeProperty: #halo