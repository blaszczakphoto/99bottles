class WordWrap
  def self.wrap(text, number)
    if number < text.length
      return text.slice(0, number) + "\n" + wrap(text.slice(number, 100000), number)
    end
    text
  end
end