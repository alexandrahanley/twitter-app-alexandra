class WelcomeController < ApplicationController

  def index
    @tweet_fetch = TweetFetch.new
    @others_tweets = @tweet_fetch.anyones_tweets(params[:user_name])
  end

end
