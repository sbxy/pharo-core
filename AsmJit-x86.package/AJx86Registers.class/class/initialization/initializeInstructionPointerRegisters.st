initializeInstructionPointerRegisters
	| ip eip rip |
	
	ip := AJx64RipRegister code: SI code name: #IP.
	eip := AJx64RipRegister code: ESI code name: #EIP.
	rip := AJx64RipRegister code: RSI code name: #RIP.
	
	Codes 
		at: SI code negated put: #IP;
		at: ESI code negated put: #EIP;
		at: RSI code negated put: #RIP.
	
	self classPool 
		at: #IP put: ip;
		at: #EIP put: eip;
		at: #RIP put: rip.