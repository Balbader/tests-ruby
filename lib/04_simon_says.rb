def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, *p)
  if str && p == nil
    print "#{str} "
    print str
  elsif str && p
    i = 0
    while i < p.length
      print "#{str} "
      i += 1
    end
  end
end

def start_of_word(str, nb)
  i = 0
  word = ""
  while i < nb
    word += str[i]
    i += 1
  end
  return word
end

def first_word(str)
  return "#{str.split(" ").first}"
end

def titleize(str)
  puts str
  str = str.capitalize
  str = str.split(" ")
  i = 1
  while i < str.length
    if str[i].length <= 3
      str[i] = str[i]
      i += 1
    else
      str[i] = str[i].capitalize
      i += 1
    end
  end
  puts str.join(" ")
end
