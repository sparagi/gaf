interface
testToggleButton
	| target interfaceAction interface |
	target := self toggleAction.
	interfaceAction := MorphicButtonAction wrap: target.
	interface := interfaceAction control.
	self 
		should: [interfaceAction label = target label];
		should: [interface model = target];	
		shouldnt: [interface isOn].
	target trigger.
	self
		should: [interface isOn]