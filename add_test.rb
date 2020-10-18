require 'yt'
require 'ap'
require 'dotenv/load'
require 'pry'

Yt.configure do |config|
  config.log_level = :debug
end

myaccount = Yt::Account.new refresh_token: ENV['YT_REFRESH_KEY']

playlist = Yt::Playlist.new id: 'PLFzffKEC3I2M6sOo-gLmyWUc3DVrTWbLY', auth: myaccount
playlist.add_video "j7QwJ-M_GAI"
playlist.add_video "-zt57TWkTF4"
playlist.add_video "t0XN-dJftSU"
