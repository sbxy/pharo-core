delete 
	"Ensure menu es closed. 
	  This is ugly, but is a remaining of Pluggable structure, which sucks anyway."
	self updateContentsWithMenu.
	super delete.
	Current := nil