event handling
registerForEvents
	"Register for a getLabelSelector event from my receiver."

	(self labelReceiver notNil and: [getLabelSelector notNil]) 
		ifTrue: 
			[self labelReceiver 
				when: getLabelSelector
				send: #triggerEvent:
				to: self
				with: #label]