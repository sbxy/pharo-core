addCustomMenuItems: aMenu hand: aHandMorph 
	"Populate aMenu with appropriate menu items for a  
	yellow-button (context menu) click."
	super addCustomMenuItems: aMenu hand: aHandMorph.

	aMenu addLine.
	aMenu addUpdating: #autoGradientString action: #toggleAutoGradient.
	self isFloating
		ifFalse: [
			aMenu addUpdating: #fillsOwnerString action: #toggleFillsOwner.
			aMenu addUpdating: #avoidVisibleBordersAtEdgeString action: #toggleAvoidVisibleBordersAtEdge]