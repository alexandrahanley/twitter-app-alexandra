class TweetFetch

  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.consumer_key
      config.consumer_secret     = Rails.application.secrets.consumer_secret
      config.access_token        = Rails.application.secrets.access_token
      config.access_token_secret = Rails.application.secrets.access_token_secret
    end
  end

  def alexandra_tweets
    @client.user_timeline("alexandrahanley")
  end

  def anyones_tweets(user_name)
    @client.user_timeline(user_name)
  end
  
end
