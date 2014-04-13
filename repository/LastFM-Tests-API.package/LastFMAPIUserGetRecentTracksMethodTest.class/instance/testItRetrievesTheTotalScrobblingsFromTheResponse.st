pagination
testItRetrievesTheTotalScrobblingsFromTheResponse

	apiCall := self recentTracksApiCall.
	expectedResponseString := self expectedRecentTracks.
	apiCall performOn: self.

	self assert: apiCall totalScrobblings equals: 17527.
	
	expectedResponseString := self expectedRecentTracksWith5ResultsPerPage.
	apiCall performOn: self.

	self assert: apiCall totalScrobblings equals: 23585