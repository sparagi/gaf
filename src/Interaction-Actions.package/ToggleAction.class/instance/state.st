accessing
state
	"Answer my state."

	^getStateArguments
		ifNil: [receiver perform: getStateSelector]
		ifNotNil: [receiver perform: getStateSelector withArguments: getStateArguments]