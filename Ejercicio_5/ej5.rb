#Ejercicio 5: Array de hashes

#Crear un arreglo de hashes, cada hash contiene un array con datos de persona, estos datos son:
#Nombre
#País
#Continente
#Género

#1. Crear el array de hashes y pobarlo con al menos 8 personas:

arr = [{Nombre:"Carlos", Pais:"Chile", Continente:"America", Genero:"M"},
	{Nombre:"Juan", Pais:"Perú", Continente:"America", Genero:"M"},	
	{Nombre:"Paula", Pais:"España", Continente:"Europa", Genero:"F"},
	{Nombre:"Aratxa", Pais:"Dubai", Continente:"Asia", Genero:"F"},	
	{Nombre:"Alvaro", Pais:"Argentina", Continente:"America", Genero:"M"},
	{Nombre:"Pedro", Pais:"Brasil", Continente:"America", Genero:"M"},
	{Nombre:"Pedro", Pais:"Alemania", Continente:"Europa", Genero:"M"},	
	{Nombre:"Valentina", Pais:"Australia", Continente:"Oceania", Genero:"F"}]

#2. Contar la cantidad de personas de la lista.
puts "\n"
puts "Ejercicio 2"

puts "El total de personas son #{arr.count}"

#3. Generar un array con cada continente, eliminar repeticiones, considerar que pueden 
#haber nombres escritos con mayúscula y minúscula 
puts "\n"
puts "Ejercicio 3"

print "Los continentes son: "
puts "\n"
puts arr.map{|h| h["Continente".to_sym].capitalize}.uniq

#4. Generar una lista con todas las personas llamadas pedro
puts "\n"
puts "Ejercicio 4"

puts "Lista de personas con nombre Pedro:" 
arr.map do |h| 
	if h["Nombre".to_sym] == "Pedro"		
		print h.values
		puts ""
	end	
end 

#5. Hacer dos listas de personas, una por cada género  
puts "\n"
puts "Ejercicio 5"
puts "\n"

m = []
f = []
i = 0
j = 0
arr.each do |h| 
	if h["Genero".to_sym] == "M"
		m[i] = h.values
		i += 1
	end
	if h["Genero".to_sym] == "F"
		f[j] = h.values
		j += 1
	end
end

puts "Lista de Hombres: #{m}"
puts "\n"
puts "Lista de Mujeres: #{f}"


#6. Armar un hash, donde cada clave  sea un continente y el value un array con los países de cada continente.
puts "\n"
puts "Ejercicio 6"

arr_continentes = arr.map{|h| h[:Continente].capitalize}.uniq
hash_final = {}

arr_continentes.each do |a|
	i = 0
	arr_pais = []

	arr.map do |h|
		if a == h[:Continente].capitalize
			#si el paìs NO existe en el array, lo inserta
			if !arr_pais.include?(h[:Pais])
				arr_pais[i] = h[:Pais]
				i += 1
			end
		end
	end
	hash_final[a] = arr_pais
end
puts hash_final