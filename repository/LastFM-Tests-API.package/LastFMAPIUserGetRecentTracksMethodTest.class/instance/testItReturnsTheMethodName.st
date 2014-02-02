method name
testItReturnsTheMethodName

	| method |
	method := LastFMAPIUserGetRecentTracksMethod for: 'user'.

	self assert: method name equals: 'user.getrecenttracks'