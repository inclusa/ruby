def square(x)
  # retorna el quadrat d'un nombre
  return 0 unless x.is_a? Integer
  x * x  
end

def saludar
  puts "Hola món"
end

saludar()

puts square("3")
