url
url

	^ '{1}?method={2}&user={3}&api_key={4}&format={5}'
		format: {
			LastFMAPI rootUrl.
			self name.
			username.
			LastFMAPI apiKey.
			LastFMAPI responseFormat }