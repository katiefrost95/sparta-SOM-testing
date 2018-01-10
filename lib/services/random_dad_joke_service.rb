require 'httparty'
require 'json'

class RandomJoke
  include HTTParty
  headers 'Accept' => 'application/json'

  attr_accessor :random_joke

  base_uri "https://icanhazdadjoke.com/"

  def get_random_joke_data
    @random_joke = JSON.parse(self.class.get("/").body)
  end

  def get_random_joke_id
    @random_joke["id"]
  end

  def get_random_joke
    @random_joke["joke"]
  end

  def get_random_status
    @random_joke["status"]
  end

end

x = RandomJoke.new
x.get_random_joke_data
# puts x.get_random_status
