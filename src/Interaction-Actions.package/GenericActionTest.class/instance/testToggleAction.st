triggering
testToggleAction
	| action |
	action := self toggleAction.
	self
		shouldnt: [action answersActions];
		
		shouldnt: [action hasEditableLabel];
		
		should: [action hasState];
		
		shouldnt: [self atWar].
	action trigger.
	self
		should: [self atWar].
	action trigger.
	self
		shouldnt: [self atWar]