def translate(words)
  def vowel_check(letter)
    %w(a e i o u y).include?(letter)
  end
  words.split.map do |w|
    if vowel_check(w[0])
      w<<"ay"
    elsif (vowel_check(w[1])==false and vowel_check(w[2])==false) or w.slice(1..2) == "qu"
      w<<w.slice!(0..2)<<"ay"
    elsif vowel_check(w[1])==false or w.slice(0..1)=="qu"
      w<<w.slice!(0..1)<<"ay"
    else
      w<<w.slice!(0)<<"ay"
    end
  end.join(" ")

end
