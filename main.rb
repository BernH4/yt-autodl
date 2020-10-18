require 'yt'
require 'dotenv/load'
require 'pry'

Yt.configure do |config|
  config.log_level = :debug
end
myaccount = Yt::Account.new refresh_token: ENV['YT_REFRESH_KEY']

playlist = Yt::Playlist.new id: 'PLFzffKEC3I2M6sOo-gLmyWUc3DVrTWbLY', auth: myaccount
# binding.pry
playlist.playlist_items.each do |video|
  puts "Title: #{video.title}\n ID: #{video.video_id}\n\n"
  video.delete
end
