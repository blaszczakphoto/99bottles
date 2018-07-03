class WordWrap
  def self.wrap(text, number)
    if number < text.length
      if text[number] == ' '
        return text.slice(0, number) + "\n" + text.slice(number + 1, 100000)
      end
      return text.slice(0, number) + "\n" + wrap(text.slice(number, 100000), number)
    end
    text
  end
end