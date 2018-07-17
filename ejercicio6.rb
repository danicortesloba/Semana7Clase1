restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }
# 1. Obtener el plato mas caro.
puts restaurant_menu[restaurant_menu.values.max]
new_hash = restaurant_menu.invert
puts new_hash[new_hash.keys.max]

# 2. Obtener el plato mas barato.
puts new_hash[new_hash.keys.min]
# 3. Sacar el promedio del valor de los platos.

def promedio(hashes)
  avr = hashes.length
  sum = hashes.inject(0) { |suma, x| suma + x[1] }
  sum / avr
end
puts promedio(restaurant_menu)
# 4. Crear un arreglo con solo los nombres de los platos.
array = restaurant_menu.keys
print array
puts " "
# 5. Crear un arreglo con solo los valores de los platos.
other_array = restaurant_menu.values
print other_array
puts " "
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar
# por 1.19).

bruto = restaurant_menu.each { |key, value| restaurant_menu[key] = value * 1.19 }
restaurant_menu = bruto
puts restaurant_menu
puts " "

# 7. Dar descuento del 20% para los platos que tengan un nombre de mas 1
# una palabra
descuento = restaurant_menu.each { |key, value|
  restaurant_menu[key] = value * 0.8 }
b = descuento.select { |keys, values| keys.include?" " }
puts "Tienes un descuento de #{b}"
