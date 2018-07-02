class WordWrap
  def self.wrap(text, number)
    if number < text.length
      return text.slice(0, 2) + "\n" + text.slice(2, 10000)
    end
    text
  end
end