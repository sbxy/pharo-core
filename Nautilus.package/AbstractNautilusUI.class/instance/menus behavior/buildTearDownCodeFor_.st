buildTearDownCodeFor: aClass 
	
	^ String streamContents: [:str | str << 'tearDown';cr.
		str tab << '"Tearing down code for '<<aClass name<<'"';cr;cr.
		aClass instVarNames sort do: [:name | str cr tab << name << ' := nil.' ]].
	