private - result
buildTrackArtistFrom: aDictionary

	^ LastFMArtist
		named: (aDictionary at: '#text')
		musicBrainzId: (aDictionary at: 'mbid')