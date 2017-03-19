#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, number = 2)
#  output = ""
#  while number > 0
#    if number > 1
#      output = output + string + " "
#    else
#      output = output + string
#    end
#    number -= 1
#  end
#  output

  output = ((string + ' ') * number)
  output.strip
end

def start_of_word(string, number)
  string[0,number]
end

def first_word(string)
  string.split[0]
end

#def titleize(string)
#  words = string.split
#  cap_words = []
#  cap_words.push (words[0].capitalize)
#  words[1,words.length-1].each do |word|
#    case word
#    when "in", "and", "of", "at", "on", "over", "the"
#      then cap_words.push word
#    else
#      cap_words.push (word.capitalize)
#    end
#  end
#  cap_words * (" ")
#end


def titleize(string)
  words = string.split
  words[0] = words[0].capitalize
  words[1,words.length-1].each do |word|
    case word
    when "in", "and", "of", "at", "on", "over", "the"
      then word = word
    else
      word.replace (word.capitalize)
    end
  end
  words * (" ")
end
