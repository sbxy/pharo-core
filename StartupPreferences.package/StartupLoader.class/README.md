StartupLoader searches for and executes .st files from certain locations.  To find these it searches for a '.config' folder in the folder next up from where the image file sits.  Then it looks in the next folder up again and so on until reaching the root folder.  When a '.config' folder is found, StartupLoader looks within this for a 'pharo' folder. This contains the startup scripts common to all versions of Pharo, and also optionally a folder per Pharo version holding startup scripts suitable for that version only.  So a typical directory layout might be...

.../some/folders/pharo/Content/Resources/pharo.image.
.../some/folders/pharo/Content/Resources/startup.st
.../some/folders/.config/pharo/author.st
.../some/folders/.config/pharo/useSharedCache.st
.../some/folders/.config/pharo/1.4/mystartupFor14only.st
.../some/folders/.config/pharo/2.0/mystartupFor20only.st

(**Note however that '.config' is an invalid filename on Windows, so '..config' is used instead)

IMPORTANT: StartupLoader will search for a folder '.config' starting from the image directory until the root of the filesystem. What happens if no folder is found? It creates '.config' in the image folder. However, it is recommended that you create the '.config' following the standard, that is, in the $HOME.

To know the real values for you...
Print the result of "FileDirectory preferencesGeneralFolder" which holds the startup scripts common to all versions of Pharo.
Print the result of "FileDirectory preferencesVersionFolder" which holds the startup scripts specific to the version of the current image.

-----------


StartupLoader example

will define a script sample startup.st in your unix root on unix 

Its contents is 

StartupLoader default executeAtomicItems: {
	StartupAtomicItem name: 'Open Help' code: 'Workspace openContents: ''Here is just an example of how to use the StartupLoader.
I should only be displayed once.
	
You can also see StartupLoader class>>#example'' label: ''Help''' isSingleton: true.
	StartupAtomicItem name: 'Open Workspace' code: 'Workspace openContents: ''I should be displayed each time'''.
}

For a more complete example, see StartupLoader class>>#example2