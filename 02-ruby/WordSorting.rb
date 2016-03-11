#Word Sorting
#Function that receives sentence and returns array
#with words sorted alpahbetically (ignore case and punctuation)

def wordsorting (sentence)
	# removing punctuation and splitting sentence
	wordlist = sentence.delete(".").split(" ")
	#sorting alpahbetically +  upcase
	puts wordlist.sort_by { |word| word.upcase }
end


wordsorting ("Have a nice day.")
wordsorting ("Fools fall for foolish follies.")
wordsorting ("Ruby is a fun language!")