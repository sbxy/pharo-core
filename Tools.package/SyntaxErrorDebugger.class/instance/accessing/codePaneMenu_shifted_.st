codePaneMenu: aMenu shifted: shifted 
	"Note that unless we override perform:orSendTo:, 
	PluggableTextController will respond to all menu items in a 
	text pane"
	
	| donorMenu |
	donorMenu := shifted
				ifTrue: [self shiftedYellowButtonMenu]
				ifFalse: [self yellowButtonMenu].
	^ aMenu addAllFrom: donorMenu