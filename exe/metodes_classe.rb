class SoyObjetoLoJuro
  @nombre_clase = "SoyObjetLoJuro"

  class << self

    def nombre_clase
      @nombre_clase
    end

    def nombre_clase=(nombre_clase)
      @nombre_clase = nombre_clase
    end

  end

end


class User
end

User.find()

SoyObjetoLoJuro.nombre_clase="OtraCosa"

puts SoyObjetoLoJuro.nombre_clase
