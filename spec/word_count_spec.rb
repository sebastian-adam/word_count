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

  it("takes one word and one sentence from the user and returns the number of times the word repeats in the sentence, ignoring capitalization") do
    expect("This is a phrase".word_count("sentence")).to(eq(0))
    expect("This is a sentence".word_count("sentence")).to(eq(1))
    expect("This is a sEnTeNcE".word_count("sentence")).to(eq(1))
    expect("This is a sentence sentence".word_count("sentence")).to(eq(2))
  end

  it("takes one word and one sentence from the user and returns the number of times the word repeats in the sentence, ignoring capitalization and punctuation") do
    expect("This is a sentence. This is also a sentence and now there are two sentences.".word_count("sentence")).to(eq(2))

  end

end
