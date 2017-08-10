module SocialTool
  def self.twiSea
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
      config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
      config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
      config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
    end

    client.search("#meme", result_type: 'recent').take(12).collect do |tweet|
      "#{tweet.user.screen_name} posted:\n #{tweet.text}"
    end
  end
end