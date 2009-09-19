accessing
hasEditableLabel
	"Answers whether my label is editable."
	^ self labelReceiver notNil
		and: [setLabelSelector notNil]