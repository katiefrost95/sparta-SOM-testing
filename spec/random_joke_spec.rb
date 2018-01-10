require 'spec_helper'

describe RandomJoke do

  before(:all) do
    @jokes = DadJokes.new.random_joke
    @jokes.get_random_joke_data
  end

  it 'should return a hash for random jokes data' do
    expect(@jokes.get_random_joke_data).to be_kind_of(Hash)
  end

  it 'should return a string for random joke id' do
    expect(@jokes.get_random_joke_id).to be_kind_of(String)
  end

  it 'should return a string for random joke' do
    expect(@jokes.get_random_joke).to be_kind_of(String)
  end

  it 'should return integer 200 for random joke status' do
    expect(@jokes.get_random_status).to eq 200
  end

end
