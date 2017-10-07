comparisons
compareStudentsOfSameAgeAndLevel
	"self compareStudentsOfSameAgeAndLevel"
	| luc tom |
	luc := Student name: 'Luc' age: 24.
	luc level: 5.
	tom := Student name: 'Tom' age: 24.
	tom level: 5.
	self display: luc = tom