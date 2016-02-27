def echo(says)
  return says
end
def shout(says)
  return says.upcase
end
def repeat(text, reproduce = 2)
 reproduce.times.collect {text}.join(' ')
end
def start_of_word(word, number)
  word[0..(number-1)]
end
def first_word(string)
  string.split[0]
end
def titleize(words)
  word_array = words.split.map do |w|
    if %w(a an the and but or for nor on at to by from over).include?(w) 
      w
    else 
      w.capitalize
    end
  end
  word_array.first.capitalize!
  word_array.last.capitalize!
  word_array.join(" ")
end


