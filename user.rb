class User

  attr_reader :username, :tweets

  def initialize(username)
    @username = username
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.username == self.username #tweet.user == self also works
    end
  end

  def post_tweet(message)
    Tweet.new(message, self)
    # # create a new tweet
    # tweet = Tweet.new(message, self)
    # # add that tweet to this users collection of tweets
    # add_tweet(tweet)
  end


  #private

  #def add_tweet(tweet)
    #self.tweets << tweet
  #end


end
