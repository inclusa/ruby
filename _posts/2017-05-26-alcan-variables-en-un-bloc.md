---
layout: post
title: 37 Alcanç de variable en un bloc
date: 2017-05-26 00:00:00
description: Alcanç de variables en un bloc
keywords: var
coments: true
---

Un bloc hereta elcontext del qual és executat d'ahí que es compare amb el concepte de `closures` en altres llenguatges.

Notar que la variable no ha estat declarada dins del bloc ni com argument. Però el bloc té accés a aquesta variable perquè el bloc és on s'executa .


```ruby
def hola
  yield
end

nombre = "Uriel"

hola { puts "Hola #{nombre}" }
```

Altra manera

```ruby
def hola
  yield
end

nombre = "Uriel"

hola do
  nombre = "Marcos"
  puts "Hola #{nombre}"
end

puts nombre
```

Output

```ruby
Hola Marcos
Marcos
```

El valor que li va ser assignat es manté fora del block.

També els blocs poden definir variables locals del mateix. Explicació en video.


