testing
testSetContainsOnlyOneInstanceOfAClassWithIVs
	| set object class |
	class  := classFactory newSubclassOf: ComparableObjectForEqualityTest  instanceVariableNames: 'x y' classVariableNames:  ''.
	class compile: 'x: newX y: newY
		x := newX.
		y := newY'.
	class class compile: 'x: newX y: newY
		^self new
			x: newX y: newY;
			yourself'.
	set := Set new.
	10 timesRepeat: [
		object  := class x: 1 y: 2.
		set add: object].
	self assert: set size = 1.
