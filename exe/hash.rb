# tutor = {{ "nombre " => "Uriel", "edad" => 23, 20 => "Vint", [] => "llista" }}

# puts tutor

# tutor = {:nombre => "Uriel", :edad => "23", :cursos => 10}

# puts tutor

# tutor = {nombre: "Uriel", edad: "23", cursos: 10}

# tutor.each do |clau,valor|
#   puts "En #{clau} està guardat #{valor}"
# end

tutor = {nombre: "Uriel", edad: "23", cursos: 10}

user_info = {apellido: "Hernandez", segundo_apellido: "Camacho"}

puts tutor.merge(user_info)
