Object subclass: #IRBytecodeGenerator
	instanceVariableNames: 'seqOrder orderSeq seqBytes jumps literals lastLiteral currentSeqId currentSeqNum bytes lastSpecialReturn instrMaps instrMap stacks stack primNum numArgs properties numberOfTemps additionalLiterals forceLongForm'
	classVariableNames: 'BytecodeTable Bytecodes SpecialConstants SpecialSelectors'
	poolDictionaries: ''
	category: 'OpalCompiler-Core-Bytecode'