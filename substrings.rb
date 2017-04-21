def substrings(string, dictionary)
	sub_strings = Hash.new
	words = string.downcase.scan(/\w+/)
	words.each do |word|
		dictionary.each do |dict_word|
			#check for substring and if exists in hash already
			if word.include?(dict_word) && sub_strings.include?(dict_word)
				sub_strings[dict_word] += 1
			#check for substring and add to hash
			elsif word.include?(dict_word)
				sub_strings[dict_word] = 1
			end
		end
	end
	puts sub_strings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

