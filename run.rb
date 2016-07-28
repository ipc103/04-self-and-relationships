require_relative 'tweet.rb'
require_relative 'author.rb'


puts 'Welcome to Twitter: Copyright pending...'
puts 'Please enter a command'
command = ''
while command != 'exit'
  command = gets.chomp
  if command == 'create'
    message = gets.chomp
    puts 'Enter the author name'
    author = gets.chomp
    tweet = Tweet.new(message, author)
    puts "The tweet was: #{tweet.message}"
  elsif command == 'list'
    tweets = Tweet.all #=> [<Tweet 1>, <Tweet 2>, <Tweet 3>]
    tweets.each_with_index do |tweet, index|
      puts "#{index + 1}. #{tweet.message} by #{tweet.author}"
    end
  end
  puts 'Please enter another command'
end
