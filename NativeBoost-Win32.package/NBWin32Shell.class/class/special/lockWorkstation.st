lockWorkstation
	"Locks the workstation."

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCall: #(BOOL LockWorkStation(void)) module: #user32
