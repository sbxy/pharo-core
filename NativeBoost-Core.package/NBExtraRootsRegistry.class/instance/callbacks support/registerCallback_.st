registerCallback: aCallback
	"answer a zero-based index of registered callback "
	| index callbacks |
	
	callbacks := pool at: #callbacks ifAbsent: [
		self at: #callbacks put: (WeakArray with: aCallback).
		^ 0.
		].
	callbacks := array at: callbacks.
	freeCallbackIndexes ifEmpty: [
		
		callbacks := callbacks copyWith: aCallback.
		self at: #callbacks put: callbacks.
		^ callbacks size - 1
		].
	
	index := freeCallbackIndexes removeLast.
	callbacks at: index+1 put: aCallback.
	^ index
	