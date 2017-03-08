def substrings(words, substrings)
	hash = Hash.new(0)
	words.downcase!
	substrings.length.times do |index|
		substrings[index].downcase!
		words.scan(substrings[index]) do |match|
			hash[match] += 1
		end
	end
	puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)