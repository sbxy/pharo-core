primSetLineCap: capStyle
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCall: #(void cairo_set_line_cap (
			self,
			cairo_line_cap_t capStyle) )