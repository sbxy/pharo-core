ParseNode subclass: #MessageNode
	instanceVariableNames: 'receiver selector precedence special arguments sizes equalNode caseErrorNode originalSelector originalArguments'
	classVariableNames: 'MacroEmitters MacroPrinters MacroSelectors MacroSizers MacroTransformers StdTypers ThenFlag'
	poolDictionaries: ''
	category: 'Compiler-ParseNodes'