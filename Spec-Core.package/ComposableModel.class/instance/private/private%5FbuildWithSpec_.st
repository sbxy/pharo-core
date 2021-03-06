private_buildWithSpec: aSpec
	"Build the widget using the spec name provided as argument"
	| widget |
	
	widget := SpecInterpreter private_buildWidgetFor: self withSpec: aSpec.

	self ensureExtentFor: widget.
	self ensureKeyBindingsFor: widget.
		
	self announce: (WidgetBuilt model: self widget: widget).	
		
	^ widget