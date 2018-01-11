require 'spec_helper'

describe SpecificJoke do

  before(:all) do
    @jokes = DadJokes.new.specific_joke
    @jokes.get_specific_joke_data('R7UfaahVfFd')
  end

  it 'should return a hash for specific jokes data' do
    expect(@jokes.get_specific_joke_data('R7UfaahVfFd')).to be_kind_of(Hash)
  end

  it 'should return a string for specific joke id' do
    expect(@jokes.get_specific_joke_id).to be_kind_of(String)
  end

  it 'should return a string for specific joke' do
    expect(@jokes.get_specific_joke).to be_kind_of(String)
  end

  it 'should return integer 200 for specific joke status' do
    expect(@jokes.get_specific_status).to eq 200
  end

end
