comparisons
compareApplesOfSameColorAtDifferentStages
	"self compareApplesOfSameColorAtDifferentStages"

	| apple1 apple2 |
	apple1 := Apple color: Color red.
	apple1 beRipe.
	apple2 := Apple color: Color yellow.
	apple2 beRotten.	
	self display: apple1 = apple2