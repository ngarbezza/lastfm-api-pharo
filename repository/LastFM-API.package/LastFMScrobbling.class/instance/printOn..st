printing
printOn: aStream

	self date printYMDOn: aStream.
	self date printHMSOn: aStream.
	aStream << ' : '.
	self track printOn: aStream