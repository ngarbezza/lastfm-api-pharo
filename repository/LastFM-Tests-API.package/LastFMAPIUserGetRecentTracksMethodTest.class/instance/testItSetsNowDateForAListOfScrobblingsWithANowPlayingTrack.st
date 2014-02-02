now playing
testItSetsNowDateForAListOfScrobblingsWithANowPlayingTrack

	| method result |
	method := LastFMAPIUserGetRecentTracksMethod for: 'user'.
	expectedResponseString := self expectedRecentTracksWithNowPlayingTrack.
	method performOn: self.

	result := method result.

	self assert: result first date < DateAndTime now