hasFalsePositiveOf: ruleId version: versionId
	^ manifestClass respondsTo: (self selectorFalsePositiveOf: ruleId version: versionId)  
	