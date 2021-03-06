startDrag: evt 
	| transferMorph draggedIndex draggedItem passenger |

	evt hand hasSubmorphs ifTrue: [^ self]. 
	self dragEnabled ifFalse: [ ^ self ].
	ActiveHand anyButtonPressed ifFalse: [ ^ self ].
			
	draggedIndex := self indexAtLocation: evt position.
	draggedItem := self listSource model draggedItemAtIndex: draggedIndex.
	draggedItem ifNil: [ ^ self ].
	passenger := self listSource transferFor: draggedItem from: self listSource.
	passenger ifNil: [ ^ self ].
		
	self releaseKeyboardFocus.
	transferMorph := self listSource withPassenger: passenger from: self.
	transferMorph dropNotifyRecipient: self.
	transferMorph align: transferMorph draggedMorph bottomLeft  with: ((evt position) translateBy: (self listSource bounds left)@(self listSource bounds top - self topDifference + self headerHeight - (3*self itemHeight/2))).
	
	"self mouseDownRow: nil."
	transferMorph dragTransferType: ((self model dragTransferTypeForMorph: self) ifNil: [ #dragTransfer ]).
	
	[evt hand grabMorph: transferMorph ] 
		ensure: [
			Cursor normal show.
			evt hand releaseMouseFocus: self] 