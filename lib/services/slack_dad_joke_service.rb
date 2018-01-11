require 'httparty'
require 'json'

class SlackJoke
  include HTTParty
  headers 'Accept' => 'application/json'

  attr_accessor :slack_joke

  base_uri "https://icanhazdadjoke.com/"

  def get_slack_joke_data
    @slack_joke = JSON.parse(self.class.get("/slack").body)
  end

  def get_attachments
    @slack_joke["attachments"]
  end

  def get_attachments_fallback
    get_attachments[0]["fallback"]
  end

  def get_attachments_footer
    get_attachments[0]["footer"]
  end

  def get_attachments_text
    get_attachments[0]["text"]
  end

  def get_response_type
    @slack_joke["response_type"]
  end

  def get_username
    @slack_joke["username"]
  end

end

x = SlackJoke.new
x.get_slack_joke_data
puts x.get_username
