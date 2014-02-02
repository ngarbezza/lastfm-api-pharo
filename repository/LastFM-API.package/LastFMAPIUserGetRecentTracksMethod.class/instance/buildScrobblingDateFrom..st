private - result
buildScrobblingDateFrom: aDictionary

	^ self class clock fromUnixTime: (aDictionary at: 'uts')