---
layout: post
title: 33 Variables de classe
date: 2017-05-26 21:00:00
description: Variables de classe
keywords: var class
coments: true
---

Les variables de classe poden tenir també variables d'instància.

Les variables de classe es distingueixen per tenir`@@` abans del nom.

Característiques:

### 1. Poden ser usades des de mètodes de la classe o des de mètodes de l'objecte.

```ruby
class Video
  @@type = "video/mp4"

  def self.type_desde_clase
    p @@type
  end

  def type_desde_objeto
    p @@type
  end

end


Video.type_desde_clase

Video.new.type_desde_objeto
```

Output

```ruby
"video/mp4"
"video/mp4"
```

Si convertirem les variables en instàncies, amb una `@` veiem els resultats:

```ruby
class Video
  @type = "video/mp4"

  def self.type_desde_clase
    p @type
  end

  def type_desde_objeto
    p @type
  end

end


Video.type_desde_clase

Video.new.type_desde_objeto
```

Output

```ruby
"video/mp4"
nil
```

En el primer cas la impressió és exactament la mateixa, però en el segon cas. En el primer cas no n'hi ha diferència entre la instància d'objecte i la de classe.

En el segon cas ha retornat `nil`. La raó és que la variable `@type` s'està cercant com una variable de l'objecte creat i no com una variable de la classe. Això no passa quan utilitzem les dos arrobes com una variable de classe.

Les variable de classe amb `@@` sempre en buscaran en la classe, no importa des d'on es criden.


### 2. Comportament quan hi ha herència


```ruby
class Video
  @@de_clase = "Classe woo"
  @de_instancia = "Instancia yeeei"
end

class YouTube < Video
  def self.test
    p @@de_clase
    p @de_instancia
  end
end

YouTube.test
```

Output

```ruby
"Classe woo"
nil
```

La variable de classe `@@de_clase` s'ha heretat, mentre que la variable d'instància `@de_instancia` soles li pertany a la **classe Video**.

Si incloem el mètode en la classe Video:

```ruby
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
    p @@de_clase
    p @de_instancia
  end
end

Video.test
YouTube.test
```

Així el `Video` sí té accés tant a la variable d'instància com de classe, metre que la classe filla sols hereta les variables de classe.

Si canviem una classe padre es veurà reflectit en una classe filla.

```ruby
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
```

Output

```ruby
"Clase cambiada :)"
nil
"Clase cambiada :)"
"Instancia yeeei"
```

Les variables de classe quarden la mateixa referència tant en el pare com en el fill, on es modifiquen es van a reflectir en totes les classes.

### 3. Quan fer servir variables de classe?

Quan es volen magatzemar quan s'utilitzen variables que pertanyen a la classe i no a l'objecte.

Un exemple típic és utilitzar una classe amb figures.

Cal utilitzar variables d'instància quan no convé que aquestes variables se hereten a les classe filles.

