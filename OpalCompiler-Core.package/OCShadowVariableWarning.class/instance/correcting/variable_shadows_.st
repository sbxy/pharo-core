variable: varNode shadows: semVar
	self interactive
		ifTrue: [ 
			OCSemanticError new
				node: node;
				compilationContext: compilationContext;
				messageText: self stringMessage;
				signal ]
		ifFalse: [ 
			Transcript cr;
				show: self methodClass name,'>>', varNode methodNode selector;
				show: '(';
				show: varNode name;
				show: ' is shadowed)';
				yourself].