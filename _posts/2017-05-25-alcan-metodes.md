---
layout: post
title: 32 Alcanç de mètodes
date: 2017-05-25 dj 05:10
description: Alcanç de mètodes
keywords: methods
coments: true
---


Els objectes en Ruby es poden classificar en tres:

- Públics -> Públic
- Privats -> Private
- Protegits -> Protected

El alcanç d'una variable o d'un mètode, conegut en anglés com **scope** fa referència a des d'on es pot manar cridar una variable.

Els **mètodes públics** són mètodes de classe. Es poden cridar des de qualsevol lloc. Des de dins o fora de la classe.

Els **mètodes privats** poden cridar-se únicament des de dins de la classe. A diferència d'altres llenguatges una classe filla sí que hereta els mètodes privats de la classe. Es poden cridar des de dins de la classe o des de dins d'una classe filla, però no des de fora.

Els **mètodes progegits** pot cridar-se des d'altres classes sempre que siguen del mateix tipus. 


```ruby
class Humano
  def initialize
    self.publico
  end

  def publico
    puts "Soy público"
  end
end

class Tutor < Humano
end

Humano.new
Tutor.new.publico
```

Output

```ruby
Soy público
Soy público
Soy público
```

D'aquesta manera un mètodo privat donarà una herrada si el cridem des de fora de la classe:

```ruby
class Humano
  def initialize
    self.publico
  end

  def publico
    puts "Soy público"  
  end

  private
    def privado
      puts "Soy privado"
    end

end

class Tutor < Humano
  def initialize
    self.public
  end
end

Humano.new.privado
```

Output

```ruby
Soy público
scope.rb:23:in `<main>': private method `privado' called for #<Humano:0x00000001dac090> (NoMethodError)
```

Fem la classe constructora privada:

```ruby
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

end

class Tutor < Humano
  def initialize
    self.public
  end
end

Humano.new
```

Output

```ruby
Soy privado
```

### 3. Mètode protegit

```ruby
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
```

