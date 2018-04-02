def hola_gente(mensaje,*personas)
  personas.each {|persona| puts "#{mensaje} #{persona}"}
end

nombres = ["Uriel", "Coco",":(",":)"]


hola_gente "Hey hola", *nombres



