comparisons
compareStudentsAndTeacherOfSameAge
	"self compareStudentsAndTeacherOfSameAge"
	| luc tom |
	luc := Teacher name: 'Luc' age: 24.
	tom := Student name: 'Tom' age: 24.
	self display: luc = tom