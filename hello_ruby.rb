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
puts 'Ruby\'s party'  # escape de comillas simples
puts 'Hola ' * 3      # repeticion de cadenas

# Interpolacion de cadenas
puts "Tengo #{10 * 2} años."

puts 'hola'.class  # obtiene la clase >>> String
puts 3.class       # obtiene la clase >>> Integer

puts '123'.to_i  # => 123

### YIELD: es un bloque de codigo que se ejecuta dentro de un metodo, este bloque se pasa dentro de un 
###        do-end despues de usar el metodo
### 1. |greeting| es un parametro del bloque.
### 2. el bloque no es un metodo como tal pero tiene parametros y estos se ponen entre ||.
### 3. do-end es equivalente a usar {}, las llaves se usan en bloques de una sola linea.
###    mientras que do-end se usa en bloques de varias lineas.
def my_method
  puts "Antes del bloque"
  yield("Hola mundo")
  puts "Después del bloque"
end

my_method do |greeting|
  puts "#{greeting}"
end

### ! : es un sufijo que se usa para indicar que un metodo es destructivo, osea cuando modifica el valor original.
###     la mayoria de los metodos se pueden usar de forma destructiva o no destructiva.
# Método no destructivo
str = "hello"
str.upcase
puts str  # Output: "hello"

# Método destructivo
str.upcase!
puts str  # Output: "HELLO"

### CONDICIONALES, con ejemplo de modificadores de sentencias.
## if, elsif, else
age = 18
if age >= 18
  puts 'You are an adult.'
end

age = 15
if age >= 18
  puts 'You are an adult.'
elsif age >= 13
  puts "You are a teenager."
else
  puts "You are a child."
end

# unless: es el opuesto de if, se ejecuta cuando la condicion es falsa. SI age NO es mayor o igual a 18, entonces imprime el mensaje.
age = 16
unless age >= 18
  puts "You are not an adult."
end

grade = 'B'
case grade
when 'A'
  puts "Excellent!"
when 'B'
  puts "Good job!"
when 'C'
  puts "Well done!"
else
  puts "Try harder next time."
end

## Modificadores de sentencia

number = 10
puts "Number is positive" if number > 0
number = -5
puts "Number is negative" unless number >= 0


## ARROJAR ERROR(Throw) con condicion
raise 'Mensaje de error.' if algo.nil?

