def hola(nombre:,edad:0,apellido:,**options)

  if edad > 30
    puts "Hola señor #{nombre}"
  elsif edad < 30
    puts "Hola joven #{nombre}"

  puts options[:animal_favorito]

  end

end

hola(apellido:"Henandez",nombre:"Uriel",edad: 23,color_favorito:"Azul",animal_favorito:"Cocodrilo")

