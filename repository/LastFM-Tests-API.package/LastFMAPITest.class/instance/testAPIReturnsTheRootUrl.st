as yet unclassified
testAPIReturnsTheRootUrl

	self
		assert: LastFMAPI rootUrl
		equals: 'http://ws.audioscrobbler.com/2.0/'