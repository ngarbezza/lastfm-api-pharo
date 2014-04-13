pagination
testTheResultsPerPageCanBeConfigured

	| method |
	method := LastFMAPIUserGetRecentTracksMethod for: 'user' resultsPerPage: 5.
	expectedResponseString := self expectedRecentTracksWith5ResultsPerPage.
	method performOn: self.

	self assert: method resultsPerPage equals: 5.
	self assert: method result size equals: 5 "tracks"