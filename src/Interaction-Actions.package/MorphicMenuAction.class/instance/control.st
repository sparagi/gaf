interface
control
	"Answer a menu with items for each of my genericAction's 
	values. This will cause a lot of trouble if genericAction 
	answersActions is false."
	| result |
	result := MenuMorph new.
	(MorphicMenuItemAction wrapAll: genericAction value)
		do: [:interfaceAction | result addMorphBack: interfaceAction control].
	result addBlankIconsIfNecessary: MenuIcons blankIcon.
	result beSticky.
	^ result