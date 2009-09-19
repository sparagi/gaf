accessing
labelReceiver: anObject 
	"Set the receiver of getLabelSelector and setLabelSelector to 
	anObject."
	self unregisterForEvents.
	labelReceiver := anObject.
	self registerForEvents