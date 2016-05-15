# coding: utf-8
require 'twitter'


s_client = Twitter::Streaming::Client.new do |config|
  config.consumer_key             = ""
  config.consumer_secret          = ""
  config.access_token             = ""
  config.access_token_secret      = ""
end

s_client.user do |status|
    if status.is_a?(Twitter::Tweet)
      puts "#{status.user.name} (@#{status.user.screen_name})"
      printf "  "
      puts status.text
      puts '---'
    end
  end
