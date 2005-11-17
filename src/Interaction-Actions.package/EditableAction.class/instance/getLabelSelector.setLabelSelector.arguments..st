accessing
getLabelSelector: aSelector setLabelSelector: oneMoreArgumentSelector arguments: anArray
	"Set my selectors and arguments for getting & setting my label.   The new labelArguments array should contain the correct number of arguments for getLabelSelector, and one too few arguments for setLabelSelector; when setLabelSelector is sent, the new label string will be added to labelArguments following the last element."
	
	self unregisterForEvents.
	getLabelSelector := aSelector.
	setLabelSelector := oneMoreArgumentSelector.
	labelArguments := anArray.
	self registerForEvents