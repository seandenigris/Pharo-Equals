comparisons
compareStudentsOfDifferentLevels
	"self compareStudentsOfDifferentLevels"
	| luc tom |
	luc := Student name: 'Luc' age: 24.
	luc level: 7.
	tom := Student name: 'Tom' age: 24.
	tom level: 4.
	self display: luc = tom