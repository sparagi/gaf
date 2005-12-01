event handling
perform: selectorSymbol orSendTo: otherTarget 
	"This unnecessary complexity is here because of 
	MenuMorph>>setInvokingView:, which rewrites all menu 
	items with no arguments to call this.  Isn't it fun to layer crufty code on top of crufty code?"
	^ self perform: selectorSymbol