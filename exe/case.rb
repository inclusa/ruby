
# case

# 0 - 10; 5 és aprovat

print "Dame tu calificacion (1-10): "
calificacion = gets.chomp.to_i

case calificacion
when 10
  puts "Muy bieeeeen"
when 9
  puts "Muy bieeeeen"
when 8
  puts "Aun puedes mejorar"
when 7
  puts "Sabemos que lo puedes hacer mejor"
when 6
  puts "Casi horrible"
else
  puts "u.u"
end
  
#if califiacion == 10 || calificacion == 9
#  puts "Muy bieeen"
#elsif califiacion == 8
#  puts "Bien, pero aun puedes mejorar"
#elsif califiacion == 7
#  puts "Bien, pero lo puedes hacer mejor"
#elsif califiacion == 6
#  puts "No estás horriblemente mal, pero casi :("
#else
#  puts "u.u"
#end
