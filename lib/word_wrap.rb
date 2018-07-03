class WordWrap
  def self.wrap(text, number)
    if number < text.length
      if text[number] == ' '
        return text.slice(0, number) + "\n" + text.slice(number + 1, 100000)
      elsif text[0..number].include?(" ")
        new_number = text.index(" ")
        return text.slice(0, new_number) + "\n" + wrap(text.slice(new_number+1, 100000), number)
      end

      return text.slice(0, number) + "\n" + wrap(text.slice(number, 100000), number)
    end
    text
  end
end