event handling
unregisterForEvents
	"Unregister for a getStateSelector event from my receiver."

	(receiver notNil and: [getStateSelector notNil]) ifTrue: [
		receiver removeActionsWithReceiver: self forEvent: getStateSelector]