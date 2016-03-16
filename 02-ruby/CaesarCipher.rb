# Caesar Cipher
# Second iteration
# shift to be choosen

def solve_cipher(input, shift)

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
		elsif letra.ord == 97
			indice = 122 + shift

		else
			indice = letra.ord - shift

		output << indice.chr
		end
	end
	puts output
end

solve_cipher("ifmmp ifmmp ifmmp", 1)
solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)