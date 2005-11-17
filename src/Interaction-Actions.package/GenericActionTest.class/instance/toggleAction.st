actions
toggleAction
	"Answer an action in which Calvin & Hobbes toggle their atWar 
	state."
	| action |
	action := ToggleAction
				label: 'at war'
				receiver: self
				selector: #toggleAtWar.
	action getStateSelector: #atWar.
	^ action