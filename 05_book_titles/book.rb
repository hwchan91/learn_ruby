class Book
# write your code here
  attr_accessor :title
  def initialize
    @title = title
  end

  def title=(name)
    words = name.split
    words_omit_first = words[1,words.length-1]
#    words_omit_first.map! { |word| (not (word == "in" || word == "and"|| word == "of"|| word == "at"|| \
#         word == "on"|| word == "over"|| word == "the" || word == "a" || word == "an")) ? word.capitalize : word }
    words_omit_first.map! { |word| (["in","and","of","over","at","on","the","a","an"].include?(word)) ? word : word.capitalize }
    @title = (words[0].capitalize + " " + words_omit_first * (" ")).strip
  end

end
