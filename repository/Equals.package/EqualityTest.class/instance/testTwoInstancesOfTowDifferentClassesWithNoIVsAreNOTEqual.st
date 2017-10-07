testing
testTwoInstancesOfTowDifferentClassesWithNoIVsAreNOTEqual
	| otherClass |
	otherClass := classFactory newSubclassOf: ComparableObjectForEqualityTest  instanceVariableNames: '' classVariableNames:  ''.
	self deny: otherClass new = ComparableObjectForEqualityTest new