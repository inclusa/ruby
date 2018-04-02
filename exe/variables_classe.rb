class Video
  @@de_clase = "Classe woo"
  @de_instancia = "Instancia yeeei"

  def self.test
    p @@de_clase
    p @de_instancia
  end

end

class YouTube < Video
  def self.test
    @@de_clase = "Clase cambiada :)"
    p @@de_clase
    p @de_instancia
  end
end

YouTube.test
Video.test

class Triangle
  @sides = 3
end



