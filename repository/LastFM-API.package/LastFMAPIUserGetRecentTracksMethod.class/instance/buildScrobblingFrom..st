private - result
buildScrobblingFrom: aDictionary

	^ LastFMScrobbling
		of: (self buildTrackFrom: aDictionary)
		at: (self buildScrobblingDateFrom: (aDictionary at: 'date'))