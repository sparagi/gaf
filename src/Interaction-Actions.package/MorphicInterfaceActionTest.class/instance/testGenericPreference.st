interface
testGenericPreference
	| interfaceAction label interface |
	label := 'Get Rid Of Slimy girlS'.
	interfaceAction := MorphicPreferenceAction
				wrap: (self genericAction: label).
	interface := interfaceAction control.
	self should: [interface isNil]