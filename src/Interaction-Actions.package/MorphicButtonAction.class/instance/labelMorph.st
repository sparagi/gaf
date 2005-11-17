interface
labelMorph
	"Answer a Morph to use as my label."
	| iconToUse |
	iconToUse := self icon.
	^ iconToUse
		ifNil: [StringMorph contents: self label font: Preferences standardButtonFont]
		ifNotNil: [SketchMorph withForm: iconToUse]