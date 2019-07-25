interface
actionsMenu
	"Answer a menu with items for each of my genericAction's 
	values. This will cause a lot of trouble if genericAction 
	answersActions is false."
	| result |
	result := MenuMorph new.
	(self class wrapAll: genericAction value)
		do: [:interfaceAction | 
			| control subMenu | 
			control := interfaceAction control.
			subMenu := control subMenu.
			(subMenu isNil
					or: [subMenu items notEmpty])
				ifTrue: [result addMorphBack: control]].
	result addBlankIconsIfNecessary: MenuIcons blankIcon.
result beSticky.
	^ result