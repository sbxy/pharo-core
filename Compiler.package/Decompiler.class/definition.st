InstructionStream subclass: #Decompiler
	instanceVariableNames: 'constructor method instVars tempVars constTable stack statements lastPc exit caseExits lastJumpPc lastReturnPc limit hasValue blockStackBase numLocalTemps blockStartsToTempVars tempVarCount lastJumpIfPcStack'
	classVariableNames: 'ArgumentFlag CascadeFlag CaseFlag IfNilFlag'
	poolDictionaries: ''
	category: 'Compiler-Kernel'