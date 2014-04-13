now playing
testItDoesNotSetNowPlayingForAnyTrackIfItNotPresentInTheResponse

	| result |
	apiCall := self recentTracksApiCall.
	expectedResponseString := self expectedRecentTracks.

	apiCall performOn: self.
	result := apiCall result.

	result do: [ :scrobbling | self deny: scrobbling nowPlaying ]