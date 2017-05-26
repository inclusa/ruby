---
layout: post
title: 33 Mètodes de classe
date: 2017-05-26 dv 18:45
description: Mètodes de classe
keywords: methods
coments: true
---

Una de les caracerístiques de Ruby és que les **classes** també són objectes.

La particularitat dels mètodes de classe, en altres llenguatges anomenats mètodes estàtics es que es manen cridar sobre una instància o un objecte de dita classe.

Per exemple, per poder cridar al nostre nom de classe anem a necessitar la classe `SoyObjetoLoJuro `i el métode `nombre_clase`.

```ruby
class SoyObjetoLoJuro
  @nombre_clase = "SoyObjetLoJuro"

  def self.nombre_clase
    @nombre_clase
  end
end

puts SoyObjetoLoJuro.nombre_clase
```

Output

```ruby
SoyObjetLoJuro
```
Cambiem la variable.

```ruby
class SoyObjetoLoJuro
  @nombre_clase = "SoyObjetLoJuro"

  def self.nombre_clase
    @nombre_clase
  end

  def self.nombre_clase=(nombre_clase)
    @nombre_clase = nombre_clase
  end
end

SoyObjetoLoJuro.nombre_clase="OtraCosa"

puts SoyObjetoLoJuro.nombre_clase
```
Output

```ruby
OtraCosa
```

La particularitat dels que els distinguix dels mètodes pertanyents a l'objecte és que, abans d'ells hi ha una referència a `self`. Quan posem `self` i la referència al objecte, el mètode li pertany a la classe.

### 2. Latra manera de definir mètodes de classe

```ruby
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

SoyObjetoLoJuro.nombre_clase="OtraCosa"

puts SoyObjetoLoJuro.nombre_clase
```

Output

```ruby
OtraCosa
```

Quan cal utilitzar mètodes de classe?

Quan la funcionalitat que estàs escrivint no li pertanya a ninguna instància o a cap objecte. Un exemple són els mètodes que s'execute sobre l'`activerecords` de **Rails**.

```ruby
class User
end

User.find()
```

Ací la funcionalitat no li pertanyiria a l'objecte, ja que no tindria sentit fercrear un usuari per cercar un altre usuari. Tindria sentit cercar el cognom, per exemple. Així aquesta classe no pertanyiria a l'objecte.

Cal diferenciar les variables de classe amb les variables d'instància.


