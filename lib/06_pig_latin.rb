def translate(str)

  vowels = ["a", "e", "i", "o", "u"]

  if vowels.include? str[0]
    return str + "ay"
  # two cases for "qu"
  elsif str[0..1] == "qu"
    return str[2..-1] + "quay"
  elsif str[1..2] == "qu"
    return str[3..-1] + str[0..2] + "ay"
  # for words that start with 3 consonants
  elsif !(vowels.include? str[0]) && !(vowels.include? str[1]) && !(vowels.include? str[2])
    return str[3..-1] + str[0..2] + "ay"
  # for words that start with 2 consonants
  elsif !(vowels.include? str[0]) && !(vowels.include? str[1]) # for 2
    return str[2..-1] + str[0..1] + "ay"
  # for words that start with a single consonant
  else
    return str[1..-1] + str[0] + "ay"
  end
end

