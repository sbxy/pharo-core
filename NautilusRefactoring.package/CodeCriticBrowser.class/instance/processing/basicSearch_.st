basicSearch: aRule
	| numberSelectors precentIncrement percent checker |
	aRule resetResult.
	self status: 'Searching'; refresh.
	numberSelectors := self environment numberSelectors.
	precentIncrement := numberSelectors isZero
		ifFalse: [ 100.0 / numberSelectors ]
		ifTrue: [ 100.0 ].
	percent := 0.0.
	checker := (Smalltalk at: #SmalllintChecker) new.
	checker
		rule: aRule;
		context: (Smalltalk at: #SmalllintChecker) new;
		environment: self environment;
		methodBlock: [ 
			percent := percent + precentIncrement min: 100.
			self status: percent truncated asString , '%' ].
	[ checker run ] ensure: [
		self refresh.
		self status: (self root problemCount > 0
			ifTrue: [ self root problemCount asString , ' problems' ]).
		checker release.
		process := nil ]