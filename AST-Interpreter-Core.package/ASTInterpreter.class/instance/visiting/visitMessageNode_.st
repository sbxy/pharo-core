visitMessageNode: aMessageNode
	| receiver |

	receiver := self interpret: aMessageNode receiver.
	
	self ifSkip: [^receiver ].
	
	^ self visitMessageNode: aMessageNode receiver: receiver.