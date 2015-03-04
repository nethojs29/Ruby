n=20 # 8 es solo para prueba, funciona para todo n>2 (no se nota el algoritmo en 1 y 2, a lo que pude ver)
read = false
array = Array.new(n)
array[0] = Array.new(n,'@')

for i in 1..n-1
	array[i] = Array.new(n,'-')
	array[i][rand(0..n-1)] = '#'
end

for i in 1..n-1
	array[rand(1..n-1)][rand(0..n-1)] = '#' # Poniendo "topes" o limitantes aleatoriamente
end

for k in 0..n-1
	for j in 0..n-1
		if array[j][k] != '#' && !read
			array[j][k] = '@'
			array[j-1][k] = '-'
		else
			read = true
		end
	end
	read = false
end

array.each do |r|
   puts r.map { |p| p }.join(" ") #Imprimiendo para que se vea como una matriz
end

