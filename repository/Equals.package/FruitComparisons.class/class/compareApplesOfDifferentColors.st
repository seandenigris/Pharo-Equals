comparisons
compareApplesOfDifferentColors
	"self compareApplesOfDifferentColors"

	| apple1 apple2 |
	apple1 := Apple color: Color red.
	apple2 := Apple color: Color yellow.
	self display: apple1 = apple2