now playing
testItSetsNowDateForAListOfScrobblingsWithANowPlayingTrack

	| result |
	apiCall := self recentTracksApiCall.
	expectedResponseString := self expectedRecentTracksWithNowPlayingTrack.
	apiCall performOn: self.

	result := apiCall result.

	self assert: result first date < DateAndTime now