def my_twitter_client
  Twitter::REST::Client.new do |config|
    config.consumer_key        = 'CaHsirnvQehHGCIRBgbfkfj3m'
    config.consumer_secret     = 'bIwjh2JWZMvwJtHSstcoQRbSQo8vc1JBC7YgtQ1WRzrSTKEG8c'
    config.access_token        = '277165798-K1t6gUGbUps279sfwbkpVebUQnGnZXIZmh6Y9lG9'
    config.access_token_secret = 'iIQg5Q4mvPS3uUE2vrmo3M4asU8Dgbf7CmLC3ovNBJG7P'
  end
end
