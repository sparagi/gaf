actions
allActions
	"Answer an OrderedCollection of GenericActions."
	| result |
	result := OrderedCollection new.
	result
		add: (self genericAction: 'Calvin''s a Dope');
		 add: self editableAction;
		 add: self toggleAction.
	^ result