#write your code here
def translate(words)
  ind_words = words.split
  pig_words= []
  ind_words.each do |pig_word|
    vowel = false
    while vowel == false
      if ["a","e","i","o","u"].include? (pig_word[0])
        vowel = true
      elsif ["qu"].include? (pig_word[0,2])
        pig_word = pig_word[2,pig_word.length-1] + pig_word[0,2]
      else
        pig_word = pig_word[1,pig_word.length-1] + pig_word[0]
      end
    end
    pig_words.push (pig_word + "ay")
  end
  pig_words * " "
end
