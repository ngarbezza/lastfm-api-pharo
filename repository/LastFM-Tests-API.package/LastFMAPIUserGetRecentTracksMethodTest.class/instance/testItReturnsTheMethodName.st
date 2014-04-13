method name
testItReturnsTheMethodName

	self
		assert: self recentTracksApiCall name
		equals: 'user.getrecenttracks'