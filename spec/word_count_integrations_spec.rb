require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do

  it("takes one word and one sentence from the user and returns the number of times the word repeats in the sentence, ignoring capitalization and punctuation") do
    visit('/')
      fill_in('word', :with => "sentence")
      fill_in('sentence', :with => "This is a sentence. This is also a sentence and now there are two sentences.")
      click_button('submit')
      expect(page).to have_content('The word \'sentence\' repeats 2 times in your sentence "This is a sentence. This is also a sentence and now there are two sentences."')
  end

end
