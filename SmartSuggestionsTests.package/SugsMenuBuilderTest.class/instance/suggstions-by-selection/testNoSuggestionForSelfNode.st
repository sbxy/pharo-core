testNoSuggestionForSelfNode
	| suggestions |

	suggestions :=SugsMenuBuilder findSuggestionsFor: SugsMockContext selfContext.
	self assert: suggestions isEmpty.