comparing
hash
	^self valuesToCompareForEquality inject: self species hash into: [:hash :comparisonValue|
		(hash + comparisonValue hash) hashMultiply]
