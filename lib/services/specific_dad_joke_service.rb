require 'httparty'
require 'json'

class SpecificJoke
  include HTTParty
  headers 'Accept' => 'application/json'

  attr_accessor :specific_joke

  base_uri "https://icanhazdadjoke.com/"

  def get_specific_joke_data(id)
    @specific_joke = JSON.parse(self.class.get("/j/#{id}").body)
  end

  def get_specific_joke_id
    @specific_joke["id"]
  end

  def get_specific_joke
    @specific_joke["joke"]
  end

  def get_specific_status
    @specific_joke["status"]
  end


end
x = SpecificJoke.new
x.get_specific_joke_data('R7UfaahVfFd')
# puts x.get_specific_joke
