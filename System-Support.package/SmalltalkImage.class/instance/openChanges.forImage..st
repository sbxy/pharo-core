sources, change log
openChanges: changesPath forImage: imageName
"find the changes file by looking in
a) the directory derived from the image name
b) the DefaultDirectory (which will normally be the directory derived from the image name or the SecurityManager's choice)
If an old file is not found in either place, check for a read-only file in the same places. If that fails, return nil"
	| changes fd changesFile changesName |
	
	changesFile := changesPath asFileReference.
	changesName := changesFile basename.
	
	"look for the changes file or an alias to it in the image directory"
	changesFile exists 
		ifTrue: [ changesFile writeStream ifNotNilDo: [ :stream| ^ stream ]].

	"look for the changes in the default directory"
	(changesFile := FileSystem workingDirectory / changesName) exists 
		ifTrue: [ changesFile writeStream ifNotNilDo: [ :stream| ^ stream ]].

	"look for read-only changes in the image directory"
	(changesFile := changesPath asFileReference) exists 
		ifTrue: [ changesFile readStream ifNotNilDo: [ :stream| ^ stream ]].

	"look for read-only changes in the default directory"
	(changesFile := FileSystem workingDirectory / changesName) exists 
		ifTrue: [ changesFile readStream ifNotNilDo: [ :stream| ^ stream ]].
		
	"failed to open a changes file"
	^ nil