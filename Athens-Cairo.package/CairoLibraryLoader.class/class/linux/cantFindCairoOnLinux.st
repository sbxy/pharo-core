cantFindCairoOnLinux
	"
	Cog VM is a 32-bit process, and therefore won't link with 64-bit libraries on 64-bit OS.
	In case if you have problems with cairo library on linux system, try following:
	
	Installing 32-bit version of Cairo library.
	
	for Fedora it is:
		$ yum install cairo.i686
		/usr/lib/libcairo.so.2
	for Ubuntu:
		$ sudo apt-get install libcairo2:i386
		/usr/lib/i386-linux-gnu/libcairo.so.2

	If library is installed try to locate it and add path to it to #pathToCairoOnLinux method.
	
	"
	
	self error: 'Cannot locate cairo library. Please check if it installed on your system'