interface
testToggleMenuItem
	| target interfaceAction interface |
	target := self toggleAction.
	interfaceAction := MorphicMenuItemAction wrap: target.
	interface := interfaceAction control.
	self
		shouldnt: [interfaceAction label = target label];
		
		should: [interface hasMarker];
		
		should: [interface target = target];
		
		should: [interface contentString = interfaceAction label].
	target trigger.
	self
		should: [interface contentString = interfaceAction label]