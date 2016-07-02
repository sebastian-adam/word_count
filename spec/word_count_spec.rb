require('rspec')
require('word_count')

describe('String#word_count') do

  it("takes two words from the user and returns a fixed number of 0 if the words are not identical") do
    expect("word".word_count("sentence")).to(eq(0))
  end

  it("takes two words from the user and returns a fixed number of 1 if the words are identical") do
    expect("word".word_count("word")).to(eq(1))
  end

  it("takes two words from the user and returns a fixed number of 1 if the words are alike, ignoring capitalization") do
    expect("Word".word_count("word")).to(eq(1))
  end
#
#   it("takes one word and one sentence from the user and returns one iteration each alike word, ignoring capitalization") do
#     expect("This is a sEnTeNcE".word_count("sentence")).to(eq("sentence"))
#   end
#
end
