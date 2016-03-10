# Fizz Buzz
# Numeros del 1 al 100
# Si es divisible por 3 -> Fizz
# Si es divisible por 5 -> Buzz
# Si su primera cifra es 1 -> Bang
# Sino imprimir el numero

(1..100).each do |num|
	#Inicializo result como string para poder añadir texto
	result = ""

	if num%3==0
		result = "Fizz"
	end

	if num%5==0
		result = result + "Buzz"
	end

# Paso numero a string para saber si en la primera posición hay un 1
	if num.to_s.index("1") == 0
		result = result + "Bang"

	elsif num%3!=0 && num%5!=0
		result = num
	end

	puts result
end
