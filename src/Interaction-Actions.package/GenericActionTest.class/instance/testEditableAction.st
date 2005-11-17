triggering
testEditableAction
	| action |
	action := self editableAction.
	self
		should: [action label = 'G.R.O.S.S.'];
		
		shouldnt: [action answersActions];
		
		should: [action hasEditableLabel];
		
		shouldnt: [action hasState].
	action trigger.
	self
		should: [action label = 'Hobbes is a mangy flea-ridden furball']