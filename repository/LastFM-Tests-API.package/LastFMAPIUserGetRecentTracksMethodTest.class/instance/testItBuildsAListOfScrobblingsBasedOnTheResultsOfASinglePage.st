list of scrobblings
testItBuildsAListOfScrobblingsBasedOnTheResultsOfASinglePage

	| result |
	apiCall := self recentTracksApiCall.
	expectedResponseString := self expectedRecentTracks.
	apiCall performOn: self.

	result := apiCall result.
	self
		assert: result size equals: 10;
		assert: (result allSatisfy: [ :scrobbling | scrobbling isKindOf: LastFMScrobbling ]);
		assert: result first date equals: (DateAndTime fromUnixTime: 1374429152);
		assert: result first track title equals: 'Ese amigo del alma';
		assert: result first track streamable equals: '0';
		assert: result first track musicBrainzId equals: '4409206f-1dc9-49b7-ace2-bfd4a8b72892';
		assert: result first track url equals: 'http://www.last.fm/music/Lito+Vitale/_/Ese+amigo+del+alma';
		assert: result first track artist name equals: 'Lito Vitale';
		assert: result first track artist musicBrainzId equals: '800b68a2-7cb8-424f-af00-179e32d3dce0';
		assert: result first track album name equals: 'Ese Amigo del Alma';
		assert: result first track album musicBrainzId equals: 'e82e3d03-2215-4279-bf0e-e2d8ff3f7a8a'