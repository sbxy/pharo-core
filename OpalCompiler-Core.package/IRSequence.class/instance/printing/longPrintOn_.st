longPrintOn: stream

	[IRPrinter new
		indent: 0;
		stream: stream;
		interpretSequence: self
	] onDNU: #orderNumber do: [:ex | ex resume: ex receiver]