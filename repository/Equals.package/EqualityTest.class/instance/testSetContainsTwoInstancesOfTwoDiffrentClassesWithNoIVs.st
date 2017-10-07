testing
testSetContainsTwoInstancesOfTwoDiffrentClassesWithNoIVs
	| set otherClass |
	otherClass := classFactory newSubclassOf: ComparableObjectForEqualityTest  instanceVariableNames: '' classVariableNames:  ''.
	set := Set with: ComparableObjectForEqualityTest new with: otherClass new.
	self assert: set size = 2.
	self assert: (set includes: ComparableObjectForEqualityTest new).
	self assert: (set includes: otherClass new).

