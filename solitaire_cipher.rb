# http://rubyquiz.com/quiz1.html

class SolitaireCipher
  def initialize(keystream)
    @key = keystream
  end

  def sanitize(s)
    s = s.upcase
    s = s.gsub(/([^A-z])/, "")
  end

  def separate_five_groups(s)
    s = s + "X" * ((5 - s.size % 5) % 5)
    out = ""
    (s.size / 5).times {|i| out << s[i*5, 5] << " "}
    out.strip
  end

  def text_to_numbers(s)
    out = []
    s.each_byte {|c| out << c - "A".ord + 1 if c >= "A".ord && c <= "Z".ord }
    out
  end

end
