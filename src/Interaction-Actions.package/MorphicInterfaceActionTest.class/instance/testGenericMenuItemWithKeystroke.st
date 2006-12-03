interface
testGenericMenuItemWithKeystroke
	| label target interfaceAction interface |
	label := 'Get Rid Of Slimy girlS'.
	target := self genericAction: label.
	interfaceAction := MorphicMenuItemAction wrap: target.
	interfaceAction keystroke: 'k'.
	interface := interfaceAction control.
	self
		shouldnt: [interfaceAction label = target label];
		
		should: [interface target = target]