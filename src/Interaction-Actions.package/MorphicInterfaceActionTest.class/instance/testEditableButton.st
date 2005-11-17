interface
testEditableButton
	| target interfaceAction interface |
	target := self editableAction.
	interfaceAction := MorphicButtonAction wrap: target.
	interface := interfaceAction control.
	self
		should: [interfaceAction label = target label];
		
		should: [interface model = target].
	target trigger.
	self
		should: [interfaceAction label = target label]