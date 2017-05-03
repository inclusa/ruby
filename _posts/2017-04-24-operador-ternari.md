---
layout: post
title: 14 Operador ternari
date: dl 24 apr 2017 07:24:02 CEST 
description: Diverses maneres de posar sentències condicionals
keywords: operator
coments: true
---

Operador ternario

### 1. Partim d'aquest codi

```ruby
user = "Uriel"

if user == "Uriel"
  puts "Tutor"
else
  puts "Visitante"
end
```
Output

```ruby
Tutor
```
### 2. Tot en una línia

```ruby
user = "Uriel"

# if user == "Uriel"
#   puts "Tutor"
# else
#   puts "Visitante"
# end

  puts (if user == "Uriel" then "Tutor" else "Visitante" end)
```

Outuput

```ruby
Visitante
```

### 3. En diverses línies

```ruby
user = "Uriel"

# if user == "Uriel"
#   puts "Tutor"
# else
#   puts "Visitante"
# end

respuesta if user == "Uriel" then 
 "Tutor"
else
 "Visitante"
end
```

### 4. Operador ternari

```ruby
user = "Uriel"

# if user == "Uriel"
#  puts "Tutor"
# else
#  puts "Visitante"
# end


# si condicion_verdadero ? entonces_resultado : si no_es_esto

 puts user == "Uriel" ? "Tutor" : "Visitante"
```
