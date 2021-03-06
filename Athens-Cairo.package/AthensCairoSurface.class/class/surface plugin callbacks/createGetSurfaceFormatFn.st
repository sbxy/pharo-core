createGetSurfaceFormatFn

	"
		int getSurfaceFormat(int handle, int* width, int* height, int* depth, int* isMSB);

		Return general information about the OS drawing surface.
		Return true if successful, false otherwise.

		The returned values describe the basic properties such as
		width, height, depth and LSB vs. MSB pixels.
	"

	| fn |

	fn := NBNativeFunctionGen 
		cdecl: #( int (int handle, int* width, int* height, int* depth, int* isMSB) )
		emit: [:gen :proxy :asm | | callInfo fnPtr |

			" the handle is a handle to cairo image surface (cairo_surface_t *) "

			"*width = cairo_image_surface_get_width ( handle )"
			asm cdeclCall: [:call |
				call push: (gen arg: #handle).
				asm
					mov: (self fnPtr: 'cairo_image_surface_get_width') asUImm32 to: asm EAX;
					call: asm EAX
			] alignment: gen stackAlignment;
			
			mov: (gen arg: #width) to: asm EDX;
			mov: asm EAX to: asm EDX ptr.
		
			"*height = cairo_image_surface_get_height ( handle )"
			asm cdeclCall: [:call |
				call push: (gen arg: #handle).
				asm
					mov: (self fnPtr: 'cairo_image_surface_get_height') asUImm32 to: asm EAX;
					call: asm EAX
			] alignment: gen stackAlignment;

			mov: (gen arg: #height) to: asm EDX;
			
"work around the bitblt bug which tries to access past the buffer size designated by width*height*depth "			
			dec: asm EAX;
			mov: asm EAX to: asm EDX ptr.

			"*depth = 32"
			asm 
				mov: (gen arg: #depth) to: asm EAX;
				mov: 32 to: asm EAX ptr32.
			
			" *isMSB = false "
			asm 
				mov: (gen arg: #isMSB) to: asm EAX;
				mov: 0 to: asm EAX ptr32;

			"return true"
				mov: 1 to: asm EAX
						
		].
	fn install.
	^ fn address