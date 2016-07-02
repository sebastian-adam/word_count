require('rspec')
require('word_count')

describe('String#word_count') do

  it("takes two words from the user and returns one iteration of the word if the words are identical") do
    expect("word".word_count("word")).to(eq("word"))
  end

  it("takes two words from the user and returns one iteration of the word if the words are alike, ignoring capitalization") do
    expect("Word".word_count("word")).to(eq("word"))
  end

end
