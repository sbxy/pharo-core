primSetLineJoin: joinStyle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	self nbCall: #(void cairo_set_line_join (
			self,
			cairo_line_join_t joinStyle) )