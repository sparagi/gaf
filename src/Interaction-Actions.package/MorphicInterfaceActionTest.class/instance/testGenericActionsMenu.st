interface
testGenericActionsMenu
	| target interfaceAction interface |
	target := self allActionsAction.
	interfaceAction := MorphicMenuAction wrap: target.
	interface := interfaceAction control.
	self
		should: [interfaceAction label = target label];
		
		should: [interface defaultTarget = nil];
		
		should: [target value size = interface items size]