# frozen_string_literal: true

class Bottles
  def verse(number)
    bottle_number = BottleNumber.for(number)

    "#{bottle_number} of beer on the wall, ".capitalize +
      "#{bottle_number} of beer.\n" +
      bottle_number.action +
      "#{bottle_number.successor} of beer on the wall.\n"
  end

  def verses(a, b)
    a.downto(b).map { |i| verse(i) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def container
    'bottles'
  end

  def pronoun
    'one'
  end

  def quantity
    number.to_s
  end

  def action
    "Take #{pronoun} down and pass it around, "
  end

  def successor
    self.class.for(number - 1)
  end

  def self.for(number)
    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    else
      BottleNumber
    end.new(number)
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    'no more'
  end

  def action
    'Go to the store and buy some more, '
  end

  def successor
    self.class.for(99)
  end
end

class BottleNumber1 < BottleNumber
  def container
    'bottle'
  end

  def pronoun
    'it'
  end
end