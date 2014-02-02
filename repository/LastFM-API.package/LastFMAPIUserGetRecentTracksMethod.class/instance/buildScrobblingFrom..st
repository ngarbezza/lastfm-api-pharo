private - result
buildScrobblingFrom: aDictionary

	^ LastFMScrobbling
		of: (self buildTrackFrom: aDictionary)
		at: (aDictionary
			at: 'date'
			ifPresent: [ :scrobblingDate | self buildScrobblingDateFrom: scrobblingDate ]
			ifAbsent: [ self class clock now ])
		nowPlaying: (self nowPlayingFlagFrom: aDictionary)