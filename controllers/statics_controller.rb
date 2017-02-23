
# setup basic api call so we know how to get data from external api- test with any api
# the below works as an exmaple with httparty
# respinse quereies can vary - so you can use with response: body,message,headers.inspect
# get '/' do
#   url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
#   response = HTTParty.get(url)
#   @spotify = response.body
#   erb :home
# end


# now use controller to pull through method from model
get '/' do
  @spotifyCall = SpotifyApi.new.response
  erb :home
end
