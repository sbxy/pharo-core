clearNativeCode

	"Unconditionally clear all method's native code trailers using a single bulk-become"
	| old new |

	self isEnabled ifFalse: [ Current := nil ].
	
	Current ifNotNil: [
		Current insideCallback ifTrue: [
			self error: 'Clearing a native code while inside a callback' ]].
	
	old := OrderedCollection new.
	new := OrderedCollection new.
	
	CompiledMethod allInstancesDo: [:method | | trailer |
		trailer := method trailer.
		trailer kind == #NativeCodeTrailer ifTrue: [
			old add: method.
			new add: (method copyWithTrailerBytes: 
				(CompiledMethodTrailer new sourcePointer: trailer sourcePointer))
			]
	]. 
	
	old asArray elementsForwardIdentityTo: new asArray

