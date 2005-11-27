interface
actionsMenu
	"Answer a menu with items for each of my genericAction's  
	values. This will cause a lot of trouble if genericAction  
	answersActions is false."
	| result items |
	result := MenuMorph new.
	items := self class wrapAll: genericAction value.
	items
		ifNil: [^nil]
		ifNotNil: [items
				do: [:interfaceAction | result addMorphBack: interfaceAction control]].
	result addBlankIconsIfNecessary: MenuIcons blankIcon.
	^ result