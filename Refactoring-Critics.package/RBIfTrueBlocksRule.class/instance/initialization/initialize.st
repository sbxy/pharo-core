initialize
	super initialize.
	self matcher 
		matchesAnyOf: #(
			'`@condition ifTrue: `{:node | node isBlock not} ifFalse: `@block'
			'`@condition ifTrue: `@block ifFalse: `{:node | node isBlock not}'
			'`@condition ifFalse: `{:node | node isBlock not} ifTrue: `@block'
			'`@condition ifFalse: `@block ifTrue: `{:node | node isBlock not}'
			'`@condition ifTrue: `{:node | node isBlock not}'
			'`@condition ifFalse: `{:node | node isBlock not}'
			'`@condition and: `{:node | node isBlock not}'
			'`@condition or: `{:node | node isBlock not}'
			'`{:node | node isBlock not} whileTrue'
			'`{:node | node isBlock not} whileFalse'
			'`{:node | node isBlock not} whileTrue: `@block'
			'`@block whileTrue: `{:node | node isBlock not}'
			'`{:node | node isBlock not} whileFalse: `@block'
			'`@block whileFalse: `{:node | node isBlock not}'
			'`@from to: `@to do: `{:node | node isBlock not}'
			'`@from to: `@to by: `@by do: `{:node | node isBlock not}'
			'`@condition ifNil: `{:node | node isBlock not}'
			'`@condition ifNotNil: `{:node | node isBlock not}'
			'`@condition ifNil: `{:node | node isBlock not} ifNotNil: `@block'
			'`@condition ifNil: `@block ifNotNil: `{:node | node isBlock not}'
			'`@condition ifNotNil: `{:node | node isBlock not} ifNil: `@block'
			'`@condition ifNotNil: `@block ifNil: `{:node | node isBlock not}' )
		do: [ :node :answer | node ]