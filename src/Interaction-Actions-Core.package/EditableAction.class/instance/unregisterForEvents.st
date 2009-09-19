event handling
unregisterForEvents
	"Unregister for a getLabelSelector event from my receiver."

	(self labelReceiver notNil and: [getLabelSelector notNil]) 
		ifTrue: [self labelReceiver removeActionsWithReceiver: self forEvent: getLabelSelector]