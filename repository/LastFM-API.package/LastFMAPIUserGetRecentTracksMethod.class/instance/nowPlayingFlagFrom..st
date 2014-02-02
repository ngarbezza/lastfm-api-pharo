private - result
nowPlayingFlagFrom: aDictionary 

	(aDictionary at: '@attr' ifAbsent: [ ^ false ])
		at: 'nowplaying'
		ifPresent: [ :nowPlayingAttr | ^ nowPlayingAttr = 'true' ]
		ifAbsent: [ ^ false ]