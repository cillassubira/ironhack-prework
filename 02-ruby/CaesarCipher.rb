# Caesar Cipher
# First iteration
# left shift 1 (except "a" -> "z")

def solve_cipher(input)

	output = ""
	(input.split"").each do |letra|

		# convert a to z
		if letra.ord == 97
			indice = 122
		else
			indice = letra.ord - 1
		end

	output << indice.chr	
	end
	puts output
end

solve_cipher("ifmmp")
solve_cipher("aaaa")