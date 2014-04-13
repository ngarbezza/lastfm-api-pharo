pagination
testItReturnsTheResultsPerPageDefaultTen

	| method |
	method := LastFMAPIUserGetRecentTracksMethod for: 'user'.
	expectedResponseString := self expectedRecentTracks.
	method performOn: self.

	self assert: method resultsPerPage equals: 10