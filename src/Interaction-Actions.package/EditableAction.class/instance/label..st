accessing
label: aString 
	"Set my label String. I rely on my model to trigger a 
	getLabelSelector event when this change occurs."

	(self labelReceiver isNil or: [setLabelSelector isNil]) 
		ifTrue: [super label: aString]
		ifFalse: 
			[labelArguments
				ifNil: [self labelReceiver perform: setLabelSelector with: aString]
				ifNotNil: 
					[self labelReceiver perform: setLabelSelector
						withArguments: labelArguments , { 
										aString}]]