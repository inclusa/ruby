---
layout: post
title: 13 Condicionals
date: dg 23 apr 2017 09:03:50 CEST 
description: Concicionals
keywords: conditions
coments: true
---


```ruby
numero_uno = gets.chomp.to_i
```

`numero_uno` variable

`get` permet rebre dades dades

`chomp` borra l'últim caracter

`to_i` canvia el nombre senser

numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

```ruby
numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

puts "#{numero_uno} es mayor que #{numero_dos}"
```

Introduim el nombres `5` i `3`.

Output:

```ruby
5
3
5 es mayor que 3
```



```ruby
numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

if numero_uno > numero_dos
  puts "#{numero_uno} es mayor que #{numero_dos}"
end

# puts "#{numero_uno} es mayor que #{numero_dos}"
```

Si s'acompleix la condició s'imprimeixen les dades, en cas contrari, no.

### 1. Condició en una sola línia

Modifiquem la condició i la posem en una sola línia de codi:

```ruby
numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

# if numero_uno > numero_dos
#  puts "puts "#{numero_uno} es mayor que #{numero_dos}"
# end

puts "#{numero_uno} es mayor que #{numero_dos}" if numero_uno > numero_dos

# puts "#{numero_uno} es mayor que #{numero_dos}"
```

Aquest mètode sols es pot fer i el que s'executa davant de la sentència `if` és d'una sola línia, en cas contrari, cal fer-ho com ho hem fet abans.

### 2. Afegim la condició `else`

`else` és un codi que diu que s'execute el que va darrere d'ell en cas que ningua condició de les que van davant s'acomplisca.

```ruby
numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

if numero_uno > numero_dos
 puts "puts "#{numero_uno} es mayor que #{numero_dos}"
else
 puts "puts "#{numero_dos} es mayor que #{numero_uno}"
end

# puts "#{numero_uno} es menor que #{numero_dos}"
```
### 3. Afegim la condició `elsif`

`elsif` ens permet crear una condició adicional

```ruby
numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

if numero_uno > numero_dos && numero_dos < numero_uno
 puts "#{numero_uno} es mayor que #{numero_dos}"
elsif numero_uno == numero_dos
 puts "Ambos números son iguales"
else
 puts "#{numero_dos} es mayor que #{numero_uno}"
end

# puts "#{numero_uno} es menor que #{numero_dos}"
```

### 4. Afegimr la condició `unless`

`unless` modificador de `if` té la funció inversa a `if`, en aquest cas imprimeix "Hola mundo" en cas que la inversa 'if' es dóne

```ruby
numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

# if numero_uno > numero_dos && numero_dos < numero_uno
#  puts "puts "#{numero_uno} es mayor que #{numero_dos}"
# elsif numero_uno == numero_dos
#  puts "Ambos números son iguales"
# else
#  puts "#{numero_dos} es mayor que #{numero_uno}"
# end

unless false
  puts "Hola mundo"
end

# puts "#{numero_uno} es menor que #{numero_dos}"
```

### 5. En una sola línia

´unless` també es pot declarar en una sola línia de codi:

```ruby
numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

# if numero_uno > numero_dos && numero_dos < numero_uno
#  puts "puts "#{numero_uno} es mayor que #{numero_dos}"
# elsif numero_uno == numero_dos
#  puts "Ambos números son iguales"
# else
#  puts "#{numero_dos} es mayor que #{numero_uno}"
# end

puts "Hola mundo" unless false

# puts "#{numero_uno} es menor que #{numero_dos}"
```

### 6. Utilització de la condició `if`

Creem un nou exemple demanant l'edat de l'usuari:


```ruby
edad = gets.chomp.to_i

# if numero_uno > numero_dos && numero_dos < numero_uno
#  puts "puts "#{numero_uno} es mayor que #{numero_dos}"
# elsif numero_uno == numero_dos
#  puts "Ambos números son iguales"
# else
#  puts "#{numero_dos} es mayor que #{numero_uno}"
# end

if edad <= 18
  puts "No eres mayor de edad, no puedes pasar"
end

puts "Hola mundo" unless false

# puts "#{numero_uno} es menor que #{numero_dos}"
```

### 7. Utilització de la condició `unless`

La condició `if` edad es pot resoldre bé posat `unless` en compte de `if`.

```ruby
edad = gets.chomp.to_i

# if numero_uno > numero_dos && numero_dos < numero_uno
#  puts "puts "#{numero_uno} es mayor que #{numero_dos}"
# elsif numero_uno == numero_dos
#  puts "Ambos números son iguales"
# else
#  puts "#{numero_dos} es mayor que #{numero_uno}"
# end

unless edad <= 18
  puts "No eres mayor de edad, no puedes pasar"
end

puts "Hola mundo" unless false

# puts "#{numero_uno} es menor que #{numero_dos}"
```

### 8 . Utilització de la negació `if !`

També el podriem expressar així `if !(edad > 18)` el signe `!` nega la condició.

```ruby
edad = gets.chomp.to_i

# if numero_uno > numero_dos && numero_dos < numero_uno
#  puts "puts "#{numero_uno} es mayor que #{numero_dos}"
# elsif numero_uno == numero_dos
#  puts "Ambos números son iguales"
# else
#  puts "#{numero_dos} es mayor que #{numero_uno}"
# end

if !(edad >= 18)
  puts "No eres mayor de edad, no puedes pasar"
end

puts "Hola mundo" unless false

# puts "#{numero_uno} es menor que #{numero_dos}"
```

