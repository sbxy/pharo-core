foreignCall: aBlock

	callInfo := self newCallInfo.
	callInfo alignment: self stackAlignment.
	asm performingCall: callInfo in: aBlock.