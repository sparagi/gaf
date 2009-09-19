accessing
labelReceiver
	"Answer the object which should receive getLabelSelector and setLabelSelector."
	^labelReceiver ifNil: [receiver]