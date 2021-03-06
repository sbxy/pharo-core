addPackagesAsGroups: aCollection
	| name |
	name := WriteStream on: ''.
	aCollection
		ifNotEmpty: [| packages firstGroup | 
			packages := aCollection sort: [:a :b | a name <= b name ].
			packages do: [:package || group |
				[ group := self addPackagesAsGroup: {package}. ]
				on: GroupAlreadyExists 
				do: [:ex | 
					name nextPutAll: ex groupName; nextPut: Character cr.
					group := nil ].
				firstGroup ifNil: [ group ifNotNil: [ firstGroup := group ]]].
			name := name contents.
			name isEmpty ifFalse: [ (GroupsAlreadyExist groupName: name) signal ].
			^ firstGroup ].
	^ nil
		
	