receiverInto: aReg
	"Input: aReg.
	Output: aReg - register holding method's receiver"
	

	^self stackValue: self methodArgumentCount storeIn: aReg.

	