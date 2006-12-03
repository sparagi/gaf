interface
control
	"Answer a menu item for invoking me."
	| result |
	result := (genericAction hasState
				ifTrue: [UpdatingMenuItemMorph]
				ifFalse: [MenuItemMorph]) new.
	result contents: self label;
		 setBalloonText: genericAction description.
	genericAction answersActions
		ifTrue: [result subMenu: (MorphicMenuAction wrap: genericAction) control]
		ifFalse: [result target: genericAction;
				selector: #trigger;
				arguments: #()].
	genericAction hasState
		ifTrue: [result wordingProvider: self wordingSelector: #label.
			genericAction
				when: #state
				send: #updateContents
				to: result].
	Preferences menuWithIcons & self icon notNil
		ifTrue: [result icon: self icon].
	^ result