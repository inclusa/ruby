class Humano
  def initialize
    privado
  end

  def publico
    puts "Soy público"  
  end

  private
    def privado
      puts "Soy privado"
    end

  protected
    def protegido
      puts "Soy protegido"
 end

class Tutor < Humano
  def initialize
    @iner =Humano.new
  end

  def llamar_protegido
    @inner.protegido
  end
end

class Alien
  def initialize
    @inner = Humano.new
  end

  def llamar_protegido
    @inner.protegido
  end
end

tutor = Tutor.new

alien = Alien.new

puts tutor.is_a?(Humano)
puts alien.is_a?(Humano)
