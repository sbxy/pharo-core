getDriveType: lpRootPathName
	"
		self getDriveType:  'D:\' 
	"
	
	| types |
	types := #(DRIVE_UNKNOWN DRIVE_NO_ROOT_DIR DRIVE_REMOVABLE DRIVE_FIXED DRIVE_REMOTE DRIVE_CDROM DRIVE_RAMDISK).
	^types at: (self primGetDriveType: lpRootPathName) +  1