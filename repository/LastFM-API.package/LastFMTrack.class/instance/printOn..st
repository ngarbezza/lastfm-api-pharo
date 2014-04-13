printing
printOn: aStream

	self title printOn: aStream.
	aStream << ' by '.
	self artist printOn: aStream.
	aStream << ' from '.
	self album printOn: aStream