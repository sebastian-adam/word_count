class String
  def word_count(target_word)
    counter = 0
    split(" ").each do |word|
      if target_word.upcase == word.upcase
        counter += 1
      end
    end
    counter
  end
end
