class Tutor
  attr_accessor :nombre
  def initialize(name)
    @nombre = name
  end
end

uriel = Tutor.new("Uriel")
jose = Tutor.new("José")

puts uriel.nombre

uriel.nombre = "Marcos"

puts uriel.nombre

