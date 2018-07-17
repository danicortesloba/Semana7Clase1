meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 400]

hash = Hash[meses.zip ventas]
puts hash

# 1 Invertir las llaves y los valores del hash.

new_hash = hash.invert
puts new_hash

# 2 Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
puts new_hash[new_hash.keys.max]
