class Author
  attr_reader :username, :email, :join_date

  def initialize(username, email, join_date)
    @username = username
    @email = email
    @join_date = join_date
    @tweets = []
  end

  def tweets
    @tweets
  end

  def add_tweet(tweet)
    tweets << tweet
    tweet.author=(self)
  end

end

# author = Author.new('coffeedad', 'coffeedad@coffee.com', '2016-07-28')
# tweet = Tweet.new('makin coffee')
# author.add_tweet(tweet)
# author.tweets # return a collection of tweets [<Tweet >]
# tweet.author #=> author
