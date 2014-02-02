configuration
testAPIReturnsTheResponseFormat

	self
		assert: LastFMAPI responseFormat
		equals: 'json'