#Ejercicio 1: Introducción a Hashes

hash = {"x": 1, "y":2}

#Agregar el texto z con el valor 3
puts "\n"	
puts "Ejercicio 1"

hash["z"] = 3
puts hash

#Cambiar el valor de x por 5
puts "\n"	
puts "Ejercicio 2"

hash[:x] = 5
puts hash

#Eliminar la clave y
puts "\n"	
puts "Ejercicio 3"

hash.delete(:y)
puts hash

#Si el hash tiene una clave llamada z mostrar en pantalla "yeeah"
puts "\n"	
puts "Ejercicio 4"

hash.each do |k, v|
	if k == "z"
		puts "yeeah"
	end
end

#Invertir el diccionario de forma que los valores sean las llaves y 
#las llaves los valores ejemplo: x = {"a":"hola" } se transforme en {"hola": "a"}
puts "\n"	
puts "Ejercicio 5"

hash.invert

puts hash.invert