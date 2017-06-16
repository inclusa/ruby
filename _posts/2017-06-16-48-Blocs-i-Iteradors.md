---
layout: post # page | post
title: 48 Blocs i Iteradors
date: 2017-06-16 
description: Blocs i Iteradors    # Argument
keywords: blocs iterators       # Paraules clau
coments: true    # Comentaris activats
---

### Blocs ###

**Definició**: un bloc és una peça de codi, similar a una funció anònima. Una funció pot usar un bloc com argument.

```ruby
# Un iterador senzill cridant el bloc per cada element de l'array
['soy', 'un', 'plátano'].each do |elemento| print elemento, '' end # soy un plátano

# Altre iterador molt usat. El bloc modifica el context on va crea estar creat
fac = 1
1.upto(5) do |i| fac *=i end
fac     # 120

# El resultat del bloc pot ser usat per qui l'usa...
[1,2,3,4,5].map{ |num| num*num}   # [1,4,9,16,25]

# ...y pot usar-se més en un argument
(0..100).inject(0){ |resultat, num| result + num}   #5050
```

### Blocs: sintaxi ###

# Els blocs són tancats per do || ... end
[1,2,3,4,5].each do |e| puts e end

# o per parèntesi
[1,2,3,4,5].map{ |e| e*e}   #[1,4,9,15,25]

Per convenció:

- usa `do || ... end` on les modificacions siguen imporntants
- y `{|| ... }` on el valor de retorn siga important

### Iteradors ###

```ruby
def f(cont, &bloque)
  valor = 1
  1.upto(cont)do |i|
    valor = valor * i
    block.call(i, valor)
  end
end

f(5).do |i, f_i| puts "f(#{i}) = #{f_i}" end
```

```ruby
f(1) = 1
f(2) = 2
f(3) = 6
f(4) = 24
f(5) = 120
```

### Bloques: salvant els blocs ###

```ruby
class Repetidor
  def initialize(&bloque)
    @bloque = bloque
	@cont = 0
  end

def repetir
  @cont +=1
  @block.call(@cont)
end
end

repetidor = Repetidor.new do |cont| puts " Me has llamdo #{cont} veces" end
3.times do repetidor.repetir end
```

```ruby
Me has llamado 1 veces
Me has llamado 2 veces
Me has llamado 3 veces
```
