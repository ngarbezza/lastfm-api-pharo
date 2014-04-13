pagination
testItRetrievesTheTotalPagesFromTheResponse

	apiCall := self recentTracksApiCall.
	expectedResponseString := self expectedRecentTracks.
	apiCall performOn: self.

	self assert: apiCall totalPages equals: 1753.

	expectedResponseString := self expectedRecentTracksWith5ResultsPerPage.
	apiCall performOn: self.

	self assert: apiCall totalPages equals: 4717