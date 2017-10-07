comparisons
compareStudentsAndTeacherOfSameNameAndAge
	"self compareStudentsAndTeacherOfSameNameAndAge"
	| smith1 smith2 |
	smith1 := Teacher name: 'Smith' age: 24.
	smith2 := Student name: 'Smith' age: 24.
	self display: smith1 = smith2