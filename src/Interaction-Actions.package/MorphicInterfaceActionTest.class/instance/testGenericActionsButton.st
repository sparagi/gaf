interface
testGenericActionsButton
	| interfaceAction interface |
	interfaceAction := MorphicButtonAction
				wrap: (self allActionsAction).
	interface := interfaceAction control.
	self
		should: [interface isNil]