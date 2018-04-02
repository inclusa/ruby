numero_magico = 20

print "Adivina el número mágico: "
numero_usuario = gets().chomp.to_i

until numero_usuario == numero_magico
  print "Incorrecto. Adivina otra vez: "
  numero_usuario = gets().chomp.to_i
end

puts "Felicidades. ¡Adivinaste!"



