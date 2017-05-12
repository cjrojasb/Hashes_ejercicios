#Ejercicio 3: Ejercicio completo con un Hash

inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
	"Impresoras": 6}

#1. Crear un menú de 4 opciones, o sea el usuario puede
#ingresar, 1, 2, 3 o 4 y según eso el programa realizará distintas funciones.
puts "\n"
puts "Ejercicio 1"
puts "\n"

a = 0

while a != 5
	suma = 0

	puts "Menú"
	puts "\n"
	puts "Ingresa una opción
	1) Ingresar item (EJ: computador,2).
	2) Ver total stock.
	3) Ver item con mayor cantidad de stock.
	4) Preguntar por un Item especifico.
	5) Salir"

	a = gets.chomp.to_i

	if a == 1
		puts "Ingresar producto y el stock"
		item = gets.chomp
		newitem = item.split(",")
		inventario[newitem[0].to_sym] = newitem[1].to_i
		puts inventario
		puts "\n"
	end

	if a == 2
		puts "\n"
		inventario.each do |k, v|
			suma += v
		end
		puts "Total stock #{suma}"
		puts "\n"
	end

	if a == 3
		puts "\n"
		inventario.each { |k, v| puts"El item con mayor stock es #{k}" if v == inventario.values.max}
		puts "\n"
	end

	if a == 4
		puts "\n"
		puts "Ingrese item para buscar"
		buscar = gets.chomp.to_sym
		inventario.each do |k, v|
			if buscar == k
				puts "Si"
				exit
			end
		end
		puts "No existe ese item en el inventario"	
		puts "\n"
	end
end