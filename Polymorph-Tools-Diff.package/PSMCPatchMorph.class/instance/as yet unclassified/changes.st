changes
	"Answer the changes tree roots."

	|changes classes|
	self model ifNil: [^#()].
	changes := OrderedCollection new.
	classes := Set new.
	self model do: [:o |
		o definition isOrganizationDefinition
			ifTrue: [changes add: (o patchWrapper model: self model)]
			ifFalse: [
				o targetClassName notNil ifTrue:[
				
				(classes includes: o targetClassName)
					ifFalse: [classes add: o targetClassName.
							changes add: (PSMCClassChangeWrapper with: o targetClassName model: self model)]]]].
			
	^(changes reject: [:e | e isKindOf: PSMCClassChangeWrapper]) , 
	((changes select: [:e | e isKindOf: PSMCClassChangeWrapper]) sorted: [:a :b | a item <= b item])