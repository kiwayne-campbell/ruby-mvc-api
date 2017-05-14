require "sinatra"
# require "sinatra/reloader" if development?
require 'httparty'

require_relative "controllers/statics_controller"
require_relative 'models/spotify'

# print my api to the cli - accessing from class created in model - create new object
puts SpotifyApi.new.response
