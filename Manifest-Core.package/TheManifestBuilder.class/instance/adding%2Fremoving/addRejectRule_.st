addRejectRule: ruleId 

	|  nfp |	
	nfp := manifestClass rejectRules asSet.
	nfp add: ruleId.
	nfp := nfp asArray.
	self compileSelector: (self class rejectRulesTag) returnValue: nfp asString
