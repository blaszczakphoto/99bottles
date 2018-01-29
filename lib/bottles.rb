class Bottles
  def verse(verse)
    generate_verse_for(verse)
  end

  def generate_verse_for(number_of_bottles)
    decremented_number_of_bottles = number_of_bottles - 1
    if decremented_number_of_bottles > 1
      <<-VERSE
#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
Take one down and pass it around, #{decremented_number_of_bottles} bottles of beer on the wall.
      VERSE
    else
      <<-VERSE
#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
Take one down and pass it around, #{decremented_number_of_bottles} bottle of beer on the wall.
      VERSE
    end
  end
end