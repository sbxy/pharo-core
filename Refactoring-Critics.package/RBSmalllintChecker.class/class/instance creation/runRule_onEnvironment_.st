runRule: aLintRule onEnvironment: aBrowserEnvironment 
	(self new)
		rule: aLintRule;
		environment: aBrowserEnvironment;
		run.
	^aLintRule