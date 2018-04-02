# Cicle each

calificaciones = %w[10 7 8 9 5 8 10]

suma = 0

calificaciones.each_with_index do |calificacion,posicion|
  suma += calificacion.to_i # to._i Convertirm cadenes a sensers
end

puts "El promedi de les calificacions és #{suma.to_f / calificaciones.length}" # Amb length Obtenim el nombre d'elements

