accessing
getStateSelector: aSymbol arguments: argumentList
	"Set the selector and arguments I use to retrieve the current state."

	self unregisterForEvents.
	getStateSelector := aSymbol.
	getStateArguments := argumentList.
	self registerForEvents