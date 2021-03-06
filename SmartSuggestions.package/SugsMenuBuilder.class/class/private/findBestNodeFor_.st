findBestNodeFor: context
	| root node|

	root := OpalCompiler new
				source: context code;
				useFaultyForParsing: true;
				parse.
	context selectedClass ifNotNil: [:theClass| root methodNode methodClass: theClass].
	root doSemanticAnalysis.
	node := root bestNodeFor: context selectedInterval.
	context selectedNode: node.
	^node.