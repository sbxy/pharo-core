accessing
analysis: anAnalysis

	analysis := anAnalysis.
	next isNil ifFalse: [ next analysis: anAnalysis ]