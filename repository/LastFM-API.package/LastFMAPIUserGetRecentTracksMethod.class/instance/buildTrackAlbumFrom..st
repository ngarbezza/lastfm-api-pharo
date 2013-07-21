private - result
buildTrackAlbumFrom: aDictionary

	^ LastFMAlbum
		named: (aDictionary at: '#text')
		musicBrainzId: (aDictionary at: 'mbid')