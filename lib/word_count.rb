class String
  def word_count(target_word)
    counter = 0
    split(" ").each do |word|
      if target_word.upcase.gsub(/[^a-z0-9\s]/i, '') == word.upcase.gsub(/[^a-z0-9\s]/i, '')
        counter += 1
      end
    end
    counter
  end
end
