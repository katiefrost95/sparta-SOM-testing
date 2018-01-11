# sparta-SOM-testing

This repository contains a service object model to pull info from and test the icanhazdadjokes api.

The tests are reusable and split into their separate services so the methods needed are easier to pull out.

The link to the api - https://icanhazdadjoke.com/api#search-for-dad-jokes

The link to RSpec documentation - http://www.rubydoc.info/gems/rspec-core/frames


**To run the tests**

    'git clone git@github.com:katiefrost95/sparta-SOM-testing.git'

    'cd sparta-SOM-testing'

Open the folder up in your text editor.

To run the tests you need to have rspec installed in your machine and you can do this by running the command

    'gem install rspec'

    'bundler install'

To get the tests running in your terminal you need to run the command

    'rspec'

**To write new Tests**

If writing new methods to call an api then create a new service file in the lib/services folder. In the joke.rb file create a new instance of the super class and remember to require relative of the service file you created. Examples of how to do this are shown in the joke.rb file.

You write the tests in the spec folder and always end the file name with spec.rb as rspec only runs the tests inside files with the word spec in.

Tests in the spec file should be written in the following format:

    it 'should return a hash for search joke data' do
      expect(@jokes.search_joke_data).to be_kind_of(Hash)
    end
