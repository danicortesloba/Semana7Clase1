productos = { 'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900,
              'leche' => 750 }

# 1
productos.each { |producto, valor| puts producto }

# 2
productos['cereal'] = 2200
puts productos

# 3
productos['bebida'] = 2000
puts productos

# 4 Convertir el hash en un array y guardarlo en una nueva variable.
array = productos.to_a
print array

# 5 Eliminar el producto 'galletas' del hash.
productos.delete('galletas')
puts productos
