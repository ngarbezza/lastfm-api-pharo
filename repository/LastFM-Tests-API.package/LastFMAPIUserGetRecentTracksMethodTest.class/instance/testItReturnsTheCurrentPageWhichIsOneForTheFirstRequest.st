pagination
testItReturnsTheCurrentPageWhichIsOneForTheFirstRequest

	| method |
	method := LastFMAPIUserGetRecentTracksMethod for: 'user'.
	expectedResponseString := self expectedRecentTracks.
	method performOn: self.

	self assert: method currentPage equals: 1