methodContextFor: aCompiledMethod receiver: receiver message: aMessage

	context := AIMethodContext new
					receiver: receiver;
					outerContext: context;
					closure: aCompiledMethod;
					arguments: aMessage arguments;
					temporaries: aCompiledMethod code temporaryNames;
					yourself.