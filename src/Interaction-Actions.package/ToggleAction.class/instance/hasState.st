accessing
hasState
	"Answers whether I have a Boolean state."
	
	^receiver notNil and: [getStateSelector notNil]