interface
control
	"Answer a Morphic button for triggering my genericAction."
	| stateSelector result labelSelector |
	genericAction answersActions ifTrue: [^nil].
	stateSelector := genericAction hasState
				ifTrue: [#state].
	labelSelector := genericAction hasEditableLabel
				ifTrue: [#label].
	result := PluggableButtonMorphPlus
				on: genericAction
				getState: stateSelector
				action: #trigger
				label: labelSelector
				menu: nil.
	result beTransparent; borderWidth: 2; borderRaised; hResizing: #shrinkWrap; vResizing: #spaceFill; label: self labelMorph; setBalloonText: genericAction description.
	stateSelector
		ifNotNil: [genericAction
				when: stateSelector
				send: #update:
				to: result
				with: stateSelector].
	labelSelector
		ifNotNil: [genericAction
				when: labelSelector
				send: #update:
				to: result
				with: labelSelector].
	^ result