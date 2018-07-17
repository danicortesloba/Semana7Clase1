personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
array = []

# 1 Se pide generar un hash con la informacion:
puts Hash[personas.zip edades]
hash = Hash[personas.zip edades]
puts hash

#2 Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.
def promedio(hashes)
  avr = hashes.length
  sum = hashes.inject(0){|sum, x| sum + x[1]}
  sum / avr
end
puts promedio(hash)
