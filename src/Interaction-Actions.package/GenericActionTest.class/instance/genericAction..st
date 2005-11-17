actions
genericAction: aString 
	"Answer an action to set the name of Calvin & Hobbes' club to 
	the given string."
	^ GenericAction
		label: aString
		receiver: self
		selector: #clubName:
		arguments: {aString}