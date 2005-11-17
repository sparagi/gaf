accessing
receiver: anObject
	"Set my receiver."
	
	self unregisterForEvents.
	super receiver: anObject.
	self registerForEvents