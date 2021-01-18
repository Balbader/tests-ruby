def translate(phrase) #translates individual words or multiple words into pig latin
  new_phrase = []
  if phrase.include? " "
    new_phrase = phrase.split(" ").map do |word|
      rearrange(word)
    end
    new_phrase = new_phrase.join(" ")
  else
    new_phrase = rearrange(phrase)
  end
  new_phrase
end

def rearrange(word) #rearranges individual words into pig latin
  vowels = ["a", "e", "i", "o", "u", "y"]
  new_word = word
  word.each_char do |char|
    if char == "u" && new_word[-1] == "q"
      new_word << "u"
      new_word.slice!(0)
      next
    elsif vowels.include? char
      new_word << "ay"
      break
    else
      new_word << char
      new_word.slice!(0)
      next
    end
  end
  new_word
end

puts translate("apple")
puts translate("banana")<<
puts translate("cherry")
puts translate("eat pie")
puts translate("three")
puts translate("school")
puts translate("quiet")
puts translate("square")
puts translate("the quick brown fox")

=begin
def translate(str)
  vowels = ["a", "e", "i", "o", "u"]

  if vowels.include? str[0]
    str + "ay"
  elsif str[0..1] == "qu"
    str[2..-1] + "quay"
  elsif str[1..2] == "qu"
    str[3..-1] + str[0..2] + "ay"
  elsif !(vowels.include? str[0]) && !(vowels.include? str[1]) && !(vowels.include? str[2])
    str[3..-1] + str[0..2] + "ay"
  elsif !(vowels.include? str[0]) && !(vowels.include? str[1])
    str[2..-1] + str[0..1] + "ay"
  else
    str[1..-1] + str[0] + "ay"
  end
end
=end
