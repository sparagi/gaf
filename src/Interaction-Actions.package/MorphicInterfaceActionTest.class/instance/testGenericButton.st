interface
testGenericButton
	| label target interfaceAction interface |
	label := 'Get Rid Of Slimy girlS'.
	target := self genericAction: label.
	interfaceAction := MorphicButtonAction wrap: target.
	interface := interfaceAction control.
	self
		should: [interfaceAction label = target label];
		should: [interface model = target].