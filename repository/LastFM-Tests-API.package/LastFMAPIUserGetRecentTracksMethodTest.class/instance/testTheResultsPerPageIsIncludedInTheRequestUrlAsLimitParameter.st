pagination
testTheResultsPerPageIsIncludedInTheRequestUrlAsLimitParameter

	apiCall := LastFMAPIUserGetRecentTracksMethod for: 'user' resultsPerPage: 5.

	self assert: (apiCall url includesSubstring: '&limit=5')