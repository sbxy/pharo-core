isFalsePositive: aItem onRule: ruleId version: versionId
	
	^ ((self containsFalsePositive: aItem onRule:  ruleId version: versionId) or:
			[(self containsRejectedRule: ruleId) or:
				[self containsRejectedClass: aItem criticClass]])