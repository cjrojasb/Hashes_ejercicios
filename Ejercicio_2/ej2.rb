#Ejercicio 2: Operaciones típicas sobre un hash

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#1. Obtener el plato mas caro
puts "\n"	
puts "Ejercicio 1"
restaurant_menu.each { |k, v| puts "El plato más caro es #{k}" if v == restaurant_menu.values.max }

#2. Obtener el plato mas barato
puts "\n"	
puts "Ejercicio 2"
restaurant_menu.each {|k,v| puts "El plato más barato es #{k}" if v == restaurant_menu.values.min}

#3. Sacar el promedio del valor de los platos
puts "\n"
puts "Ejercicio 3"

suma = 0
restaurant_menu.each do |k, v|
	suma +=v
end
prom = suma / restaurant_menu.count.to_f
puts "El promedio es #{prom}"

#4. Crear un arreglo con solo los nombres de los platos

puts "\n"
puts "Ejercicio 4"
print restaurant_menu.keys


#5. Crear un arreglo con solo los valores de los platos
puts "\n"
puts "\n"
puts "Ejercicio 5"
print restaurant_menu.values

#6. Modificar el hash y agregar el IVA a los valores de los 
#platos (multiplicar por 1.19).
puts "\n"
puts "\n"
puts "Ejercicio 6"

restaurant_menu.each do |k, v|
	iva = v * 1.19
	puts "El valor del plato #{k} con IVA es #{iva}"
end

#7. Dar descuento del 20% para los platos que tengan un
#nombre de mas 1 una palabra.
puts "\n"
puts "\n"
puts "Ejercicio 7"

restaurant_menu.each do |k, v|
	a = []
	a = k.split(" ")
	desct = 0
	total = 0
	if a.count > 1
		iva = v * 0.20
		total = v - iva
		puts "El precio con descuento de #{k} es #{total}"
	end
end
