enabled: aBoolean
	"Set the enablement state of the receiver."

	aBoolean = self enabled
		ifFalse: [self setProperty: #enabled toValue: aBoolean.
				self
					adoptPaneColor: self paneColor;
					changed]