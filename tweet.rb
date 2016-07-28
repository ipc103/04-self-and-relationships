class Tweet
  attr_reader :message, :time, :length, :tags, :number_of_favorites
  attr_accessor :author
  @@all = []

  # DO NOT DO - Ian
  # def self.new(message)
  #   puts self
  #   new_tweet = Tweet.allocate
  #   new_tweet.initialize(message)
  # end

  def self.all
    @@all
  end

  def initialize(message, author)
    @message = message
    @author = author
    @@all << self
  end

  def display_username_and_message
    puts display_username
  end

  def display_username
    "#{message}"
  end

  # we need to collect all of the created tweets into an array
  # we need some method to be able to print out all of the tweets

end

# tweet = Tweet.new('good coffee')
# tweet.display_username_and_message
# tweet.message = 'Coffee is great'
# tweet.message #=> 'Coffee is great'
# Tweet.new('making coffee')
# Tweet.new('coffee # time')
