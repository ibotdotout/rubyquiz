#http://rubyquiz.com/quiz1.html

class SolitaireCipher

  def initialize(keystream)
    @key = keystream
  end

  def sanitize(s)
    #upcase && remove none any A-Z char
    s = s.upcase.gsub(/([^A-z])/, "")
    s = s + "X" * ((5 - s.size % 5) % 5)
    out = ""
    (s.size / 5).times {|i| out << s[i*5, 5] << " "}
    return out.strip
  end

  def text_to_numbers(s)
    out = Array.new
    s.each_byte {|c|
      if c >= "A".ord and c <= "Z".ord
        out << c - "A".ord + 1
      end
    }
    return out
  end

end
