buildWithSpecLayout: aSpecLayout
	"Build the widget using the spec name provided as argument"
	| widget |
	
	widget := SpecInterpreter interpretASpec: aSpecLayout model: self.
	widget := widget asWidget.
	
	self ensureExtentFor: widget.
	self ensureKeyBindingsFor: widget.
	
	self announce: (WidgetBuilt model: self widget: widget).
	
	^ widget