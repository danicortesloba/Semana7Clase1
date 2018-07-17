inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

def nuevo(hash)
  p "Ingrese item y stock separados por una coma"
  string = gets.chomp
  splits = string.split(',')
  hash[splits.first.to_sym] = splits.last
  puts hash
end

  def delete(hash)
  puts "¿Cuál de estos quieres borrar (pon el nombre completo)?"
  puts hash
  place = gets.chomp.to_sym
  hash.delete(place)
  puts hash
end

def fix(hash)
  puts "¿Cuál de estos quieres editar? (pon el nombre completo)"
  puts hash
  nombre = gets.chomp.to_sym
  puts "¿Stock?"
  cantidad = gets.chomp.to_i
  hash[nombre] = cantidad
  puts hash
end

def suma(hash)
  temp_array = hash.values
  print temp_array
  sum = temp_array.inject(0){|sum, x| sum + x}
  print sum
end

def greatest(hash)
  puts hash[hash.values.max]
  new_hash = hash.invert
  puts new_hash[new_hash.keys.max]
end

def existence(hash)
  puts "¿Qué item buscas?"
  search = gets.chomp.to_sym
  if hash.keys.include?search
    puts "Ese item está en stock"
  else puts "Ese item NO está en stock"
  end
end

p "press Enter"

option = gets.chomp.to_i

while option != 7

  p "Opción 1: Permite agregar un item y su stock separado por una coma"
  p "Opción 2: Permite eliminar un item"
  p "Opción 3: Permite actualizar la información (item y stock)"
  p "Opción 4: Muestra el stock total (suma del stock)"
  p "Opción 5: Muestra el item con mayor cantidad de stock"
  p "Opción 6: Muestra si un item está en el inventario"
  p "Opción 7: Salir"

  option = gets.chomp.to_i
puts  case option
  when 1
     nuevo(inventario)
  when 2
    delete(inventario)
  when 3
    fix(inventario)
  when 4
    suma(inventario)
  when 5
    greatest(inventario)
  when 6
    existence(inventario)
  else
  end
end
