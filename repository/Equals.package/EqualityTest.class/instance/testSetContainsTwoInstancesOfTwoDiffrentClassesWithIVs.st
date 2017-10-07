testing
testSetContainsTwoInstancesOfTwoDiffrentClassesWithIVs
	| set otherClass yetAnotherClass |
	otherClass := classFactory newSubclassOf: ComparableObjectForEqualityTest  instanceVariableNames: 'x y' classVariableNames:  ''.
	yetAnotherClass := classFactory newSubclassOf: ComparableObjectForEqualityTest  instanceVariableNames: 'x y' classVariableNames:  ''.
	{otherClass. yetAnotherClass} do: [:class|
		class compile: 'x: newX y: newY
			x := newX.
			y := newY'.
		class class compile: 'x: newX y: newY
			^self new
				x: newX y: newY;
				yourself'.
	].
	set := Set with: (otherClass x: 'abc' y: 123) with: (yetAnotherClass x: 'abc' y: 123).
	self assert: set size = 2.
	self assert: (set includes: (otherClass x: 'abc' y: 123)).
	self assert: (set includes: (yetAnotherClass x: 'abc' y: 123)).
