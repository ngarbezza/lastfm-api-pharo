as yet unclassified
testAPIReturnsTheResponseFormat

	self
		assert: LastFMAPI responseFormat
		equals: 'json'