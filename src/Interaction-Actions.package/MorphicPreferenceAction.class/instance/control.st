interface
control
	"Answer a small Morph for changing my value, or nil if no such 
	element is appropriate."
	| outerButton aButton str |
	genericAction hasState
		ifFalse: [^ nil].
	aButton := UpdatingThreePhaseButtonMorph checkBox.
	aButton target: genericAction;
		 actionSelector: #trigger;
		 getSelector: #state.
	genericAction
		when: #state
		send: #step
		to: aButton.
	str := StringMorph contents: self label.
	str lock.
	outerButton := AlignmentMorph newRow height: 24.
	outerButton beTransparent; beSticky; hResizing: #spaceFill; vResizing: #shrinkWrap; setNameTo: self label; addMorph: aButton; addTransparentSpacerOfSize: 2 @ 0; addMorphBack: str;
		on: #mouseUp
		send: #trigger
		to: genericAction; setBalloonText: genericAction description; setProperty: #balloonTarget toValue: aButton.
	^ outerButton