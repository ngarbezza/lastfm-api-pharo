clock
clock

	^ clock isNil
		ifTrue: [ self clock: self defaultClock ]
		ifFalse: [ clock ]