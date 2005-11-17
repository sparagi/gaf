instance creation
wrapAll: genericActionCollection
	"Answer a collection of new instances of me, initialized with the GenericActions in the given collection."
	^genericActionCollection collect: [:action |
		self wrap: action]