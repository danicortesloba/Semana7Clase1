h = { x: 1, y: 2 }
# 1
h[:z] = 3
puts h

# 2 Cambiar el valor de x por 5.
h[:x] = 5
puts h
# 3 Eliminar la clave y.
h.delete(:y)
puts h
# 4 Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
puts 'yeeah'if h.has_key?(:z)
# 5 Invertir el diccionario de forma que los valores sean las llaves y las lla
new = h.invert
puts new
