def substrings(input, list)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  hash = {}
  dictionary.each {|index| hash[index] = 0}
  words = input.gsub(/[[:punct:]]/, '').downcase.split.join("|")
  list.select do |member| 
    if words.include?(member) == true 
     hash[member] = words.scan(member).count
    end
  end
  hash.delete_if {|k, v| v == 0}
  puts hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
