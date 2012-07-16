converting
asArray
	| result currentOffset  numberOfProportionals currentProportional delta size haveToChangeTheAnte width |
	
	currentOffset := 0.
	currentProportional := 0.
	result := OrderedCollection new.
	result add: self type.
	numberOfProportionals := 0.
	haveToChangeTheAnte := false.
	size := self commands size.
	
	self commands do: [:e |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [ numberOfProportionals := numberOfProportionals +1 ]].
	
	numberOfProportionals isZero
		ifTrue: [ delta := 0 ]
		ifFalse: [ delta := 1/numberOfProportionals ].
	
	self commands doWithIndex: [:e :idx |
		e offsets = (0@0 corner: 0@0)
			ifTrue: [
				e fractions: (currentProportional@0 corner: (currentProportional +delta)@1).
				e offsets: (currentOffset@0 corner: 0@0).
				currentOffset := 0.
				currentProportional := currentProportional +delta.
				haveToChangeTheAnte := nil ]
			ifFalse: [| y0 y1 |
				width := e offsets width.
				y0 := e offsets top.
				y1 := e offsets bottom.
				idx = size 
					ifTrue: [
						e fractions: (1@0 corner: 1@1).
						e offsets: ((width negated)@y0 corner: 0@y1).
						haveToChangeTheAnte isNil ifTrue: [ haveToChangeTheAnte := true ]]
					ifFalse: [
						e fractions: (currentProportional@0 corner: currentProportional@1).
						e offsets: (currentOffset@y0 corner: (currentOffset + width)@y1).
						currentOffset := (currentOffset + width).
						haveToChangeTheAnte := false ]]].
			
	(haveToChangeTheAnte notNil and: [ haveToChangeTheAnte ])
		ifTrue: [ | ante x0 y0 y1 |
			ante := self commands at: (size - 1).
			x0 := ante offsets topLeft x.
			y0 := ante offsets topLeft y.
			y1 := ante offsets bottomRight y.
			ante offsets: (x0@y0 corner: (width negated)@y1) ].		
			
	self commands do: [:e |
		e generateArguments.
		e asSpecElements do: [:el |
			result add: el ]].
	
	^ result asArray