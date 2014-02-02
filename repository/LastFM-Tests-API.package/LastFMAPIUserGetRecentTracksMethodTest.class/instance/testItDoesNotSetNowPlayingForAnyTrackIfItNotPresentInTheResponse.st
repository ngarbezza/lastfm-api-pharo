now playing
testItDoesNotSetNowPlayingForAnyTrackIfItNotPresentInTheResponse

	| method result |
	method := LastFMAPIUserGetRecentTracksMethod for: 'user'.
	expectedResponseString := self expectedRecentTracks.
	method performOn: self.

	result := method result.

	result do: [ :scrobbling | self deny: scrobbling nowPlaying ]