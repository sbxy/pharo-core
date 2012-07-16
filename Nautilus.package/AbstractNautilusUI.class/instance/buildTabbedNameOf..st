private
buildTabbedNameOf: anElement
			
	| tab result size |
	
	tab := '   '.
	size := cachedHierarchy 
						at: anElement 
						ifPresent: [:p | p size - 2 ]
						ifAbsent: [ 0 ].
	
	result := String new: (size * (tab size)) streamContents: [ :s|
		1 to: size do: [:i | s nextPutAll: tab ]].

	^ self selectedPackage 
		ifNil: [result, anElement name]
		ifNotNil: [:package | 
			( anElement package = package)
				ifTrue: [ (result, anElement name) asStringMorph ]
				ifFalse: [ (result , anElement name",' (', anElement package name,')'")asStringMorph color: self extensionColor;yourself]]