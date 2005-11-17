*Interaction-Actions-Morphic
decorateMenu: aMenu 
	"decorate aMenu with icons"
	| numberAdded |
	Preferences menuWithIcons
		ifFalse: [^ self].
	aMenu ifNil: [^self].
	numberAdded := 0.
	aMenu items
		do: [:item | 
			| icon | 
			icon := self iconForMenuItem: item.
			icon
				ifNotNil: [item icon: icon.
					numberAdded := numberAdded + 1]].
	numberAdded isZero
		ifTrue: [^ self].
	aMenu addBlankIconsIfNecessary: self blankIcon