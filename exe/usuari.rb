class Usuario
  attr_accessor :nombre

  def saludar
    saludo = yield(@nombre)
    puts saludo
  end

end

uriel = Usuario.new

uriel.nombre = "Uriel"

uriel.saludar do |nombre|
  saludo = "Hola #{nombre}"
  saludo
end

uriel.saludar { |nombre|"Hello #{nombre}" }
