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
		ifTrue: [| actionsMenu | 
			actionsMenu := self actionsMenu.
			actionsMenu 
				ifNil: [^nil]
				ifNotNil: [result subMenu: actionsMenu]]
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