transposed
	[nrows = ncols] assert.
	^self indicesCollect: [:row :column | self at: column at: row]