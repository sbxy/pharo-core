athensFillRectangle: aRect on: anAthensCanvas
	"This is a terminal method in rendering dispatch scheme
	canvas->shape->paint. See AthensCanvas>>fillShape: "

	anAthensCanvas surface engine reset
		prepareForRendering;
		registerFormFill: form origin: origin direction: direction normal: self normal;
		fillRectangle: aRect
