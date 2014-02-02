now playing
testItSetsNowPlayingFlagCorrectly

	| method result |
	method := LastFMAPIUserGetRecentTracksMethod for: 'user'.
	expectedResponseString := self expectedRecentTracksWithNowPlayingTrack.
	method performOn: self.

	result := method result.

	self assert: result first nowPlaying.
	result allButFirstDo: [ :scrobbling | self deny: scrobbling nowPlaying ]