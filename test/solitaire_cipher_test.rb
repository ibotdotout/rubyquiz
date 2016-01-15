# https://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing

require "test/unit"
require_relative "../solitaire_cipher"

class SolitaireCipherTest < Test::Unit::TestCase
  def setup
    text = "Code in Ruby, live longer!"
    @cipher = SolitaireCipher.new(text)
  end

  def test_santitze
    text = "Code in Ruby, live longer!"
    expected = "CODEINRUBYLIVELONGER"
    result = @cipher.sanitize(text)
    assert_equal result, expected
  end

  def test_separate_five_groups
    text = "CODEINRUBYLIVELONGER"
    expected= "CODEI NRUBY LIVEL ONGER"
    result = @cipher.separate_five_groups(text)
    assert_equal result, expected
  end

  def test_text_to_number
    text = "CODEI NRUBY LIVEL ONGER"
    expected = [3,15,4,5,9,14,18,21,2,25,12,9,22,5,12,15,14,7,5,18]
    result = @cipher.text_to_numbers(text)
    assert_equal result, expected
  end

end