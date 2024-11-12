=begin
  1. Extensiones:
    - Ruby extension pack
  2. Ejecutar codigo ruby: ruby hello_ruby.rb
  3. El nombre del fichero/directorio tiene que ser el mismo nombre de la clase/modulo en
     minusculas, agregando la extension .rb
  4. En Ruby todo es un objeto, y podemos acceder a sus metodos con un punto.
  5. Comillas:
    - Comillas simples: no interpretan caracteres especiales, se procesan mas rapido
    - Comillas dobles: permite realizar interpolacion de cadenas, se procesan mas lentas
=end

# observacion: puts = put + s = put + string = poner cadena
puts 'hola'  # imprime con salto de linea >>>>>>>>>>>>>>>>> hola
print 'hola' # imprime sin salto de linea >>>>>>>>>>>>>>>>> hola
p 'hola'     # imprime una representacion mas detallada >>> "hola"

# Strings
puts "Hola mundo"     # doble comillas, imprime mas lento
puts 'Hola mundo'     # simple comillas, imprime mas rapido
puts 'Hola' + 'mundo' # concatenacion de cadenas
puts 'Hola' * 3       # repeticion de cadenas

# Interpolacion de cadenas
puts "Tengo #{10 * 2} años."

puts 'hola'.class  # obtiene la clase >>> String
puts 3.class       # obtiene la clase >>> Integer