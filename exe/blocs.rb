def hola &bloque
  bloque.call if block_given?
end

hola { puts "Hola mundo" }

