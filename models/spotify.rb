# setup model to grab http request using gem httparty & create methods that can be
# accessed globally

class SpotifyApi
  attr_reader :response
  def initialize
    url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
    @response = HTTParty.get(url)
  end
end
