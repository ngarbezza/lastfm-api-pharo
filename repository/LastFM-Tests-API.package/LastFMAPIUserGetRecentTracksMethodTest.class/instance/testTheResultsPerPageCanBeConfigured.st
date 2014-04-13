pagination
testTheResultsPerPageCanBeConfigured

	apiCall := LastFMAPIUserGetRecentTracksMethod for: 'user' resultsPerPage: 5.
	expectedResponseString := self expectedRecentTracksWith5ResultsPerPage.

	apiCall performOn: self.

	self assert: apiCall resultsPerPage equals: 5.
	self assert: apiCall result size equals: 5 "tracks"