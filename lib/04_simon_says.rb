def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, nb)
  nb.times do
    puts str
  end
end

def start_of_word(str, nb)
  i = 0
  while i < nb
    print str[i]
    i += 1
  end
end

def first_word(str)
  return "#{str.split(" ").first}"
end

def titleize(str)
  puts str
  str = str.capitalize
  puts str
  str = str.split(" ")
  print str
  puts
  i = 1
  while i <= str.length
    str = str[i].capitalize
    print str[i]
    print " "
    i += 1
  end
end
