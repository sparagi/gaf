accessing
atWar: aBoolean 
	"Set whether Calvin & Hobbes are at war."
	atWar := aBoolean.
	self triggerEvent: #atWar