dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
str0 = "Howdy partner, sit down! How's it going?"
def substring(string, dictionary)
  result = Hash.new
  string_down = string.downcase
  dictionary.map do |word| 
    if string_down.scan(word).length > 0
      result[word] = string_down.scan(word).length
    end
  end
  result
end

p substring('below', dictionary)
p substring(str0, dictionary)

