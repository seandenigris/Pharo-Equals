comparisons
compareApplesOfSameColor
	"self compareApplesOfSameColor"

	| apple1 apple2 |
	apple1 := Apple color: Color red.
	apple2 := Apple color: Color red.
	self display: apple1 = apple2