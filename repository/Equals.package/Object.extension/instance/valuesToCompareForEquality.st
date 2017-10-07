*Equals
valuesToCompareForEquality
	^self class allInstVarNames collect: [:ivName|
		self instVarNamed: ivName]