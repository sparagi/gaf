triggering
testGenericActions
	| action result |
	action := self allActionsAction.
	self
		should: [action answersActions];
		
		shouldnt: [action hasEditableLabel];
		
		shouldnt: [action hasState].
	result := action value.
	self should: [result size = 3]