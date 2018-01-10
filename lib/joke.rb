require_relative 'services/random_dad_joke_service.rb'
require_relative 'services/slack_dad_joke_service.rb'
require_relative 'services/specific_dad_joke_service.rb'
require_relative 'services/search_dad_joke_service.rb'


class DadJokes

  def random_joke
    RandomJoke.new
  end

  def random_slack_joke
    SlackJoke.new
  end

  def specific_joke
    SpecificJoke.new
  end

  def search_joke
    Search.new
  end
end
