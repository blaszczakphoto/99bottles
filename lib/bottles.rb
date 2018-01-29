class Bottles
  def verse(verse)
    generate_verse_for(verse)
  end

  def generate_verse_for(number_of_bottles)
    decremented_number_of_bottles = number_of_bottles - 1

    number_of_bottles_string = number_to_bottles(number_of_bottles)
    decremented_number_of_bottles_string = number_to_bottles(decremented_number_of_bottles)
    take_one_down_part = (number_of_bottles == 1) ? "Take it down" : "Take one down"
    <<-VERSE
#{number_of_bottles_string} of beer on the wall, #{number_of_bottles_string} of beer.
#{take_one_down_part} and pass it around, #{decremented_number_of_bottles_string} of beer on the wall.
    VERSE
  end

  def number_to_bottles(number)
    if number > 1
      "#{number} bottles"
    elsif number == 1
      "#{number} bottle"
    elsif number == 0
      "no more bottles"
    end
  end
end