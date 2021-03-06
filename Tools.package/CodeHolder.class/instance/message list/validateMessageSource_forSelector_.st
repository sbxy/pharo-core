validateMessageSource: sourceString forSelector: aSelector
	"Check whether there is evidence that method source is invalid"

	| sourcesName |
	(self selectedClass compiler parseSelector: sourceString asString) = aSelector
		ifFalse: [
			sourcesName := Smalltalk sourcesName asFileReference basename.
			self inform: 'There may be a problem with your sources file!

The source code for every method should (usually) start with the
method selector but this is not the case with this method! You may
proceed with caution but it is recommended that you get a new source file.

This can happen if you download the "' , sourcesName  , '" file, 
or the ".changes" file you use, as TEXT. It must be transfered 
in BINARY mode, even if it looks like a text file, 
to preserve the CR line ends.

Mac users: This may have been caused by Stuffit Expander. 
To prevent the files above to be converted to Mac line ends 
when they are expanded, do this: Start the program, then 
from Preferences... in the File menu, choose the Cross 
Platform panel, then select "Never" and press OK. 
Then expand the compressed archive again.

(Occasionally, the source code for a method may legitimately
start with a non-alphabetic character -- for example, Behavior
method #formalHeaderPartsFor:.  In such rare cases, you can
happily disregard this warning.)'].