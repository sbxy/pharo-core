clone: oop
	"Return a shallow copy of the given object. May cause GC"
	"Assume: Oop is a real object, not a small integer."
	
	^ self gatedCall
