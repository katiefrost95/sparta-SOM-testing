require 'spec_helper'

describe Search do

  before(:all) do
    @jokes = DadJokes.new.search_joke
    @jokes.search_joke_data
  end

  it 'should return a hash for search joke data' do
    expect(@jokes.search_joke_data).to be_kind_of(Hash)
  end

  it 'should return an integer for current page' do
    expect(@jokes.current_page).to be_kind_of(Integer)
  end

  it 'should return an integer for limit' do
    expect(@jokes.limit).to be_kind_of(Integer)
  end

  it 'should return integer for next page' do
    expect(@jokes.next_page).to be_kind_of(Integer)
  end

  it 'should return integer for previous page' do
    expect(@jokes.previous_page).to be_kind_of(Integer)
  end

  it 'should return an array for results' do
    expect(@jokes.get_results).to be_kind_of(Array)
  end

  it 'should return a string for id' do
    @jokes.get_results_id.each do |x|
      expect(x).to be_kind_of(String)
    end
  end

  it 'should return a string for joke' do
    @jokes.get_results_joke.each do |x|
      expect(x).to be_kind_of(String)
    end
  end

  it 'should return a string for search term' do
    expect(@jokes.get_search_terms).to be_kind_of(String)
  end

  it 'should return integer for status' do
    expect(@jokes.get_status).to be_kind_of(Integer)
  end

  it 'should return integer for total jokes' do
    expect(@jokes.total_jokes).to be_kind_of(Integer)
  end

  it 'should return integer for total pages' do
    expect(@jokes.total_pages).to be_kind_of(Integer)
  end

end
