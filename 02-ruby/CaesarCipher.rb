# Caesar Cipher
# Third iteration
# left shift of 3 as default parameter

def solve_cipher(input, shift=nil)

# Setting -3 as defautl shift
	if shift.nil? 
		shift = -3
	end


# Positive numbers shift right and negative numbers shift left 
	if shift < 0
		shift = -shift
	end

	output = ""
	(input.split"").each do |letra|

		# Spaces remain as spaces
		if letra == " "
			output << " "

		# a will be z in case of shift = 1
		elsif letra == 'a'
			indice = 122 + shift

		else
			indice = letra.ord - shift

		output << indice.chr
		end
	end
	puts output
end

solve_cipher("ifmmp ifmmp ifmmp", 1)
# not entering shift to use default
solve_cipher("p| uhdo qdph lv grqdog gxfn")