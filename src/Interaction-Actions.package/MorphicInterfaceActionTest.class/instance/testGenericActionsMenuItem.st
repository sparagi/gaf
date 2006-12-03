interface
testGenericActionsMenuItem
	| target interfaceAction interface |
	target := self allActionsAction.
	interfaceAction := MorphicMenuItemAction wrap: target.
	interface := interfaceAction control.
	self
		should: [interfaceAction label = target label];
		
		should: [target label = interface contents];
		
		should: [interface hasSubMenu];
		
		should: [target value size = interface subMenu items size]