---
layout: post # page | post
title: 49 Estructures de control
date: 2017-06-16 
description: Case, if... else, booleans, bucles  # Argument
keywords: case, if, else, booleans, bucles,      # Paraules clau
coments: true    # Comentaris activats
---

### Case ###

```ruby
def saludar(*nombres)   # * indica un nombre indefinit d'arguments
  case nombres.length
    when 0
      "Que triste, nadie ha leido mi tutorial"
    when 1
      "Hola #{nombres}. Por lo menos una persona quiere saber Ruby"
    when 2..5
      "Hola #{nombres.join(', ')}. Gracias por venir"
    when 6..12
      "#{nombres.length} lectores. Bienvenidos a Ruby!"
    else
      "Wow #{nombres.length} lectores. Cuanta gente!"
  end
end
 
puts saludar('Alejandro', 'Luis', 'Pedro', 'Antonio', 'Guido', 'Matz, 'Satish')
# 7 lectores. Bienvendios a Ruby!
```

### Condicionals ###

Ruby té estructures de control estándar. A més, es pot annexar una expressió.

```ruby
# Estructura de control habitual...
if (1+1 == 2)
  "Me gusta la escuela"
else
  "Menuda sorpresa!"
end
 
#...que podemos anexar a la derecha
"Me gusta la escuela." if (1+1 == 2)    # "Me gusta la escuela"
"Menuda sorpresa!" unless (1+1 == 2)    # nil
 
(1+1 == 2) ? 'Correcto':'Incorrecto'    # Correcto
 
prob_lluvia = rand(100)                 # 64 (por ejemplo)
case prob_lluvia
  when 0...10 then "Probabilidad más baja"
  when 10...50 then "Baja probabilidad"
  when 50...90 then "Alta probabilidad"
  when 90...100 then "Probabilidad más alta"
end                                     # Alta probabilidad
```

### Booleans ###

Únicament `nil` i `false` són falsos; tot el demás és vedader.

```ruby
def es_true(valor)
 puts valor ? true : false
end                     # nil
 
es_true(false)          # false
es_true(nil)            # false
es_true(true)           # true
es_true(1)              # true
es_true(0)              # true
es_true([0,1,2])        # true
es_true('a'..'z')       # true
es_true('')             # true
es_true(:un_simbolo)    # true
```

### Bucles ###

Ruby té on elegir en les construccions de bucles, però cal no oblidar-se dels blocs.

```ruby
i = 1       # 1
 
while (i < 10)
  i *=2
end         # nil
puts i           # 16
 
i *= 2 while (i < 100)  # nil
puts i                       # 128
 
begin
  i *= 2
end while (i < 100)     # nil
puts i                       # 256
 
i *=2 until (i >= 1000) # nil
puts i                       # 1024
 
loop do
  break i if (i >= 4000)
  i *= 2
end                     # 4096
puts i                       # 4096
 
4.times do i *= 2 end   # 4
puts i                       # 65536
 
r = []                  # []
for i in 0..7
  next if i % 2 == 0
  r << i
end                     # 0..7
puts r                       # [1, 3, 5, 7]
 
# Los bloques pueden simplificar muchas cosas
(0..7).select{ |i| % 2 != 0}   # [1, 3, 5, 7]
```
