instance creation
wrap: genericAction 
	"Answer a new instance of me, initialized from the given 
	GenericAction. "
	^ genericAction ifNotNil: [self new initializeFrom: genericAction]