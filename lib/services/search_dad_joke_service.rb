require 'httparty'
require 'json'

class Search
  include HTTParty
  headers 'Accept' => 'application/json'

  attr_accessor :search_joke

  base_uri "https://icanhazdadjoke.com/"

  def search_joke_data
    @search_joke = JSON.parse(self.class.get("/search").body)
  end

  def current_page
    @search_joke["current_page"]
  end

  def limit
    @search_joke["limit"]
  end

  def next_page
    @search_joke["next_page"]
  end

  def previous_page
    @search_joke["previous_page"]
  end

  def get_results
    @search_joke["results"]
  end

  def get_results_id
    id =[]
    get_results.each{|x| id << x['id']}
    id
  end

  def get_results_joke
    joke =[]
    get_results.each{|x| joke << x['joke']}
    joke
  end

  def get_search_terms
    @search_joke["search_term"]
  end

  def get_status
    @search_joke["status"]
  end

  def total_jokes
    @search_joke["total_jokes"]
  end

  def total_pages
    @search_joke["total_pages"]
  end

end
x = Search.new
x.search_joke_data
# puts x.current_page
