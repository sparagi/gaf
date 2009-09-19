event handling
registerForEvents
	"Register for a getStateSelector event from my receiver."

	(receiver notNil and: [getStateSelector notNil]) ifTrue: [
		receiver when: getStateSelector send: #stateChanged to: self]