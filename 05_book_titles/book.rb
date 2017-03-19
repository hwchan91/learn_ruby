class Book
# write your code here
  attr_accessor :title
  def initialize
    @title = title
  end

  def title=(name)
    words = name.split
#    ind_words.map! do |word|
#      word = word.capitalize
#    end
#    @title = ind_words * " "
#  end


    words[0] = words[0].capitalize
    words[1,words.length-1].map! do |word|
      if not (word == "in" || word == "and"|| word == "of"|| word == "at"|| \
         word == "on"|| word == "over"|| word == "the" || word == "a" || word == "an")
        word.replace (word.capitalize)
      end
    end
    @title = words * (" ")
  end

end
