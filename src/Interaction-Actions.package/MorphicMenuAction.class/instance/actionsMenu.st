interface
actionsMenu
	"Answer a menu with items for each of my genericAction's values.  This will cause a lot of trouble if genericAction answersActions is false."
	| result |
	result := MenuMorph new.
	(self class wrapAll: (genericAction value)) do: [:interfaceAction |
		result addMorphBack: interfaceAction control].
	result addBlankIconsIfNecessary: MenuIcons blankIcon.
	^result