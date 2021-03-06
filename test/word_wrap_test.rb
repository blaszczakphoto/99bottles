gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/word_wrap'

class WordWrapTest < Minitest::Test
  def test_the_first_verse
    assert_equal "", WordWrap.wrap("", 0)
  end

  def test_some_stupid_case
    assert_equal "word", WordWrap.wrap("word", 4)
  end

  def test_without_spaces
    assert_equal "wo\nrd", WordWrap.wrap("word", 2)
  end

  def test_without_spaces_longer_string
    assert_equal "word\nword\nword\nword", WordWrap.wrap("wordwordwordword", 4)
  end

  def test_space_at_the_edge
    assert_equal "word\nword", WordWrap.wrap("word word", 4)
  end

  def test_space_before_column_limit
    assert_equal "word\nword", WordWrap.wrap("word word", 6)
  end

  def test_really_small_column_boundary
    assert_equal "wor\nd\nwor\nd", WordWrap.wrap("word word", 3)
  end
end
