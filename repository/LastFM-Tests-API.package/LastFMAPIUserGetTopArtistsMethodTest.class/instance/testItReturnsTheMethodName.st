as yet unclassified
testItReturnsTheMethodName

	|method|
	method := LastFMAPIUserGetTopArtistsMethod for: 'user'.

	self assert: method name equals: 'user.gettopartists'