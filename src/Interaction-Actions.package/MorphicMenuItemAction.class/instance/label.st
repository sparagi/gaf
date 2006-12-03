accessing
label
	| result |
	result := genericAction label.
	genericAction hasState
		ifTrue: [| currentState | 
			currentState := genericAction state.
			currentState
				ifNotNil: [result := (currentState
								ifTrue: ['<yes>']
								ifFalse: ['<no>'])
								, result]].
	keystroke
		ifNotNil: [result := result , ' (' , keystroke asString , ')'].
	^ result