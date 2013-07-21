private - result
buildTrackFrom: aDictionary

	^ LastFMTrack
		titled: (aDictionary at: 'name')
		by: (self buildTrackArtistFrom: (aDictionary at: 'artist'))
		from: (self buildTrackAlbumFrom: (aDictionary at: 'album'))
		streamable: (aDictionary at: 'streamable')
		musicBrainzId: (aDictionary at: 'mbid')
		url: (aDictionary at: 'url')