interface
testGenericMenu
	| label target interfaceAction interface |
	label := 'Get Rid Of Slimy girlS'.
	target := self genericAction: label.
	interfaceAction := MorphicMenuAction wrap: target.
	interface := interfaceAction control.
	self
		should: [interfaceAction label = target label];
		
		should: [interface target = target]