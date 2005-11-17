interface
testTogglePreference
	| target interfaceAction interface checkbox |
	target := self toggleAction.
	interfaceAction := MorphicPreferenceAction wrap: target.
	interface := interfaceAction control.
	checkbox := interface submorphs first.
	self
		should: [interfaceAction label = target label];
		should: [interface submorphs size = 3];
		shouldnt: [checkbox isOn].
	target trigger.
	self should: [checkbox isOn].