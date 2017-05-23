---
layout: post
title: 30 Propietats i variables accessores
date: 2017-05-22 dl 23:14
description: Propietats i variables accessores
keywords: properties
coments: true
---

Les variables d'instància no poden ser consultades desde fora de la definició de la classe.

```ruby
class Tutor
  def initialize(name)
    @nombre = name

    puts @nombre
  end
end

uriel = Tutor.new("Uriel")
jose = Tutor.new("José")

# puts uriel.nombre

# puts jose.nombre
```

Output

```ruby
Uriel
José
```

### 1. Què tenen d'especial aquestes vareables?

Es pot accedir a elles des de qualsevol part de dins de l'objecte, no importa si es declara en un mètode i després accedim des d'altre mètode.

```ruby
class Tutor
  def initialize(name)
    @nombre = name
  end

  def say_my_name
    puts @nombre
  end
end

uriel = Tutor.new("Uriel")
jose = Tutor.new("José")

uriel.say_my_name
jose.say_my_name

# puts uriel.nombre

# puts jose.nombre
```

Output

```ruby
Uriel
José
```

Encara que la variable `@nombre` va estar assignada des del constructor, però també la podem cridar des del mètode `say_my_name`.

### 3. Si les variables instància no poden ser alterades o llegides des de l'exterior com llegir aquesta propietat de l'objecte?

Utilitzem mètodes accesors. Aquests mètodes defineixen com podem cambiar, afinar o modificar una determinada propietat i al mateix temps com llegir-la.

Els mètodes accessors són de dos tipus `get` i `set`. Exemple:

```ruby
class Tutor
  def initialize(name)
    @nombre = name
  end

  def get_name
    @nombre
  end

  def set_nombre(nombre)
    @nombre
  end
end
```

- El mètode accessor `get` (obtenir) serverixen per a llegir.
- El mètode accessor `set` (colocar o assignar) serveix per a assignar o modificar una propietat.

A l'exemple es veu com imprimim el nom, el modifiquem, el reasignem a `Marcos` i el tornem a imprimir.

```ruby
class Tutor
  def initialize(name)
    @nombre = name
  end

  def get_nombre
    @nombre
  end

  def set_nombre(nombre)
    @nombre = nombre
  end
end

uriel = Tutor.new("Uriel")
jose = Tutor.new("José")

puts uriel.get_nombre

uriel.set_nombre("Marcos")

puts uriel.get_nombre

# puts uriel.nombre

# puts jose.nombre
```

Output

```ruby
Uriel
Marcos
```

Això comprova que el codi funciona.

Que el mètode `get` i `set` comencen precisament amb aquestes paraules és una convenció a molts llenguatges, com Java, però no a Ruby. En Ruby no es fa així.

El que diferencia en Ruby a un `get` i a un `set` és el caràcter `=`.

En comptes de:

```ruby
def get_nombre
    @nombre
  end

  def set_nombre(nombre)
    @nombre = nombre
  end
```

Així:

```ruby
def nombre
    @nombre
  end

  def nombre=(nombre)
    @nombre = nombre
  end
```

Això fa que el codi siga més fàcil de llegir i transparent.

D'aquesta manera els cridem així:

```ruby
uriel.nombre = "Marcos"

puts uriel.nombre
```

En comptes de:

```ruby
uriel.set_nombre("Marcos")
```

Tot junt:

```ruby
class Tutor
  def initialize(name)
    @nombre = name
  end

  def get_nombre
    @nombre
  end

  def set_nombre(nombre)
    @nombre = nombre
  end
end

uriel = Tutor.new("Uriel")
jose = Tutor.new("José")

puts uriel.nombre

uriel.nombre = "Marcos"

puts uriel.nombre


# puts uriel.nombre

# puts jose.nombre
```

### 4. Mètodes per no escriure més del compte.

```ruby
class Tutor
  attr_accessor: nombre
  attr_reader: nombre
  attr_writer: nombre
end
```

Aquest són els tres mètodes accessors que Ruby té.

`attr_accessor: nombre` defineix tant el `get` com el `set`.

`attr_reader: nombre` defineix sols defineix el `get`.

`attr_writer: nombre` defineix sols defineix el `set`.

Exemple:

```ruby
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
```

Output

```ruby
Uriel
Marcos
```

