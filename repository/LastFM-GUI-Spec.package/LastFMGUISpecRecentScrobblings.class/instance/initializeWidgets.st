as yet unclassified
initializeWidgets

	self instantiateModels: #(
		scrobblings			MultiColumnListModel
		username			TextInputFieldModel
		fetchScrobblings	ButtonModel).

	scrobblings displayBlock: [ :scrobbling | {
		scrobbling date printString.
		scrobbling track title printString.
		scrobbling track artist name printString.
		scrobbling track album name printString} ].
	scrobblings items: OrderedCollection new.
	username autoAccept: true.
	fetchScrobblings label: 'Fetch scrobblings'; state: false.
	fetchScrobblings action: [ 
		|items|
		items := [ (LastFMAPIUserGetRecentTracksMethod for: username text) perform; result ]
			on: Error do: [ :error | UIManager inform: 'Error getting tracks'. OrderedCollection new ].
		scrobblings items: items ].