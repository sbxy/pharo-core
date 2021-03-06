findSimilarSender
	"Return the closest sender with the same method, return nil if none found"

	| method |
	method := self method.
	^ self sender findContextSuchThat: [ :context | 
		context method == method ]