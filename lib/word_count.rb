class String
  def word_count(target_word)
    if target_word.upcase == self.upcase
      1
    else
      0
    end
  end
end
