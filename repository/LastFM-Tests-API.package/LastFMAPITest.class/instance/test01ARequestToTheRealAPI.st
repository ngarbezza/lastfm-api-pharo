requests
test01ARequestToTheRealAPI

	apiCall := LastFMAPIUserGetTopArtistsMethod for: 'NeverABrokenMan'.
	apiCall perform.

	self assert: (apiCall response includesKey: 'topartists')