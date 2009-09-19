accessing
label
	"Answer my label String."

	^(self labelReceiver isNil or: [getLabelSelector isNil]) 
		ifTrue: [super label]
		ifFalse: 
			[labelArguments ifNil: [self labelReceiver perform: getLabelSelector]
				ifNotNil: [self labelReceiver perform: getLabelSelector withArguments: labelArguments]]