# https://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing

require_relative "test_helper"
require_relative "../quiz/solitaire_cipher"
require "minitest/autorun"

class SolitaireCipherTest < Minitest::Test
  def setup
    key = "DWJXH YRFDG TMSHP UURXJ"
    @cipher = SolitaireCipher.new(key)
  end

  def test_santitze
    text = "Code in Ruby, live longer!"
    expected = "CODEINRUBYLIVELONGER"
    result = @cipher.sanitize(text)
    assert_equal expected, result
  end

  def test_separate_five_groups
    text = "CODEINRUBYLIVELONGER"
    expected= "CODEI NRUBY LIVEL ONGER"
    result = @cipher.separate_five_groups(text)
    assert_equal expected, result
  end

  def test_text_to_number
    text = "CODEI NRUBY LIVEL ONGER"
    expected = [3,15,4,5,9,14,18,21,2,25,12,9,22,5,12,15,14,7,5,18]
    result = @cipher.text_to_numbers(text)
    assert_equal expected, result
  end

  def test_number_to_text
    numbers = [7,12,14,3,17,13,10,1,6,6,6,22,15,13,2,10,9,25,3,2]
    expected = "GLNCQMJAFFFVOMBJIYCB"
    result = @cipher.numbers_to_text(numbers)
    assert_equal expected, result
  end

  def test_encrypt
    text = "Code in Ruby, live longer!"
    expected = "GLNCQ MJAFF FVOMB JIYCB"
    result = @cipher.encrypt(text)
    assert_equal expected, result
  end

end
