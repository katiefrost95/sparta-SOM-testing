require 'spec_helper'

describe SlackJoke do

  before(:all) do
    @jokes = DadJokes.new.random_slack_joke
    @jokes.get_slack_joke_data
  end

  it 'should return a hash for slack joke data' do
    expect(@jokes.get_slack_joke_data).to be_kind_of(Hash)
  end

  it 'should return an array for attachments' do
    expect(@jokes.get_attachments).to be_kind_of(Array)
  end

  it 'should return a string for fallback' do
    expect(@jokes.get_attachments_fallback).to be_kind_of(String)
  end

  it 'should return a string for footer' do
    expect(@jokes.get_attachments_footer).to be_kind_of(String)
  end

  it 'should return a string for text' do
    expect(@jokes.get_attachments_text).to be_kind_of(String)
  end

  it 'should return a string for response type' do
    expect(@jokes.get_response_type).to be_kind_of(String)
  end

  it 'should return a string for username' do
    expect(@jokes.get_username).to be_kind_of(String)
  end

end
