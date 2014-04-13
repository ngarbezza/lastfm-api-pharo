pagination
testTheResultsPerPageIsIncludedInTheRequestUrlAsLimitParameter

	| method |
	method := LastFMAPIUserGetRecentTracksMethod for: 'user' resultsPerPage: 5.

	self assert: (method url includesSubstring: '&limit=5')