comparisons
compareStudentsOfDifferentAge
	"self compareStudentsOfDifferentAge"
	| luc tom |
	luc := Student name: 'Luc' age: 24.
	tom := Student name: 'Tom' age: 5.
	self display: luc = tom