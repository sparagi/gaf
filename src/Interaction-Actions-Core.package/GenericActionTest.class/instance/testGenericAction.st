triggering
testGenericAction
	| label action |
	label := 'Get Rid Of Slimy girlS'.
	action := self genericAction: label.
	self
		should: [action label = label];
		
		shouldnt: [action answersActions];
		
		shouldnt: [action hasEditableLabel];
		
		shouldnt: [action hasState];
		
		should: [self clubName = 'G.R.O.S.S.'].
	action trigger.
	self
		should: [self clubName = label]