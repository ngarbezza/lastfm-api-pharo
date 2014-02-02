as yet unclassified
defaultSpec
	<spec>

	^ SpecLayout composed
		newColumn: [ :column |
			column newRow: [ :row |
				row add: #username; add: #fetchScrobblings ] height: 30.
			column add: #scrobblings];
		yourself