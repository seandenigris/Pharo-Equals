testing
testTwoInstancesOfTheSameClassWithSameIvValuessAreEqual
	| class |
	class  := classFactory newSubclassOf: ComparableObjectForEqualityTest  instanceVariableNames: 'x y' classVariableNames:  ''.
	class compile: 'x: newX y: newY
		x := newX.
		y := newY'.
	class class compile: 'x: newX y: newY
		^self new
			x: newX y: newY;
			yourself'.
	self assert: (class x: 1 y: 'abc') = (class x: 1 y: 'abc').