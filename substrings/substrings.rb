list = ["below","down","go","going","horn","how","howdy",
	"it","i","low","own","part","partner","sit"]



def substrings(stringer, dictionary)
	stash = Hash.new(0)
	wordArray = (stringer.downcase).split(' ')

	wordArray.each do |search|
	  dictionary.each do |word|
	  	if search.include?(word)
	  	  stash[word] += 1
	  	end
	  end
	end
	puts stash
end

substrings("below", list)
substrings("Howdy partner, sit down! How's it going?", list)