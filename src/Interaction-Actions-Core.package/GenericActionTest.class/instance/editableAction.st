actions
editableAction
	"Answer an action in which Hobbes sings the club anthem  
	early."
	| action |
	action := EditableAction
				label: ''
				receiver: self
				selector: #singAnthem.
	action getLabelSelector: #clubName setLabelSelector: #clubName:.
	^ action