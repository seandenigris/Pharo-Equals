testing
testSetContainsOnlyOneInstanceOfAClassWithNoIVs
	| set |
	set := Set new.
	10 timesRepeat: [set add: ComparableObjectForEqualityTest new].
	self assert: set size = 1.
	self assert: (set includes: ComparableObjectForEqualityTest new)
