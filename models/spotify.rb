# setup model to grab http request using gem httparty & create methods that can be
# accessed globally

class SpotifyApi
  attr_reader :response, :genres, :name, :followers
  def initialize
    url = 'https://api.spotify.com/v1/search?type=artist&q=madonna'
    @response = HTTParty.get(url)
    @name = response['artists']['items'][0]['name']
    @genres = response['artists']['items'][0]['genres']
    @followers = response['artists']['items'][0]['followers']['total']
  end
end
