# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2", "two" => "2", "too" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end 

def word_substituter(tweet)
  array_tweet = tweet.split(" ")
  short_tweet = []
  array_tweet.each do |word|
    if dictionary.keys.include?(word.downcase)
      short_tweet << dictionary[word.downcase]
    else
      short_tweet << word 
    end 
  end 
  short_tweet.join(" ")
end 

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.map do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else 
    tweet
  end 
end 
