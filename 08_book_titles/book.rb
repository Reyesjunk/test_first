class Book
  attr_reader :title
  def title=(stuff)
    words = stuff.capitalize.split.map do |w|
      short_words = %w(a an the and but or for nor on at to by from over in of)
      short_words.include?(w) ? w : w.capitalize
    end
    @title = words.join(' ')
  end
end
