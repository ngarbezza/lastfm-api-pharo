requests
test01ARequestToTheRealAPI

	| method |
	method := LastFMAPIUserGetTopArtistsMethod for: 'NeverABrokenMan'.
	method perform.
	
	self assert: (method response includesKey: 'topartists')