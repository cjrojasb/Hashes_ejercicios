#Ejercicio 4: Array y Hashes

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edad = [32, 28, 41, 19]

# 1. Se pide generar un hash con la información
#personas_hash = {"Carolina": 32,"Alejandro":28, "María Jesús":41, "Valentín":19}
puts "\n"
puts "Ejercicio 1"
i = 0
personas_hash = {}
while i < personas.length
	personas_hash[personas[i]] = edad[i]
	i += 1
end

puts personas_hash

# 2. Crear un método que reciba el hash y devuelva la edad del hash pasado como argumento.
puts "\n"
puts "Ejercicio 2"

def ages (personas_hash)
	return personas_hash.values
end

puts "Las edades de las personas son"
print ages(personas_hash)