shortcutsRegistrationFrom: src to: dest
	
	src changesModelOn: $c command do: [ self copyAllFrom: src to: dest ].
	src changesModelOn: $- command do: [ self subtractFrom: src to: dest ]. 