now playing
testItSetsNowPlayingFlagCorrectly

	| result |
	apiCall := self recentTracksApiCall.
	expectedResponseString := self expectedRecentTracksWithNowPlayingTrack.
	apiCall performOn: self.

	result := apiCall result.

	self assert: result first nowPlaying.
	result allButFirstDo: [ :scrobbling | self deny: scrobbling nowPlaying ]