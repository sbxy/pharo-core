initialize

	methodBuilder := IRBuilder new.
	effectTranslator := self as: OCASTTranslatorForEffect.
	valueTranslator := self as: OCASTTranslatorForValue.
	effectTranslator instVarNamed: #effectTranslator put: effectTranslator.
	effectTranslator instVarNamed: #valueTranslator put: valueTranslator.
	valueTranslator instVarNamed: #valueTranslator put: valueTranslator.
