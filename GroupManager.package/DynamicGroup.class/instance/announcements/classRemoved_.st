classRemoved: anAnnouncement
	| class |
	
	class := anAnnouncement classRemoved theNonMetaClass.
	blocks copy do: [:b | (b value anySatisfy: [:e | e methodClass theNonMetaClass = class])
								ifTrue: [ | col |
									col := OrderedCollection new.
									b value do: [:e |
										e methodClass theNonMetaClass = class
											ifFalse: [ col add: e ]].
									blocks 
										remove: b;
										add: [ col ]]].