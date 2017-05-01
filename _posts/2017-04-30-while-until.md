---
layout: post
title: 20 While, Until
date: dg 30 abr 2017 05:42:39 CEST 
description: While - Until 
keywords:  while until
coments: true
---

While i Until

`while`: mentre

`until`: fins que

### 00 Concepte ###

Ens permet definir cicles el final de qual no està definit per un nombre de repeticions sinó per l'avaluació d'una expressió que torna verdader o fals.

A partir de l'expressió `while` es va a avaluar `true` or `false`.

```ruby
while expresion
 # Instruccions
end
```

### 1. Ordre ###

Li diguem que partisca des de `0` i incremente en `1` la iteració fins que arribe a `10`.

```ruby
i = 0

while i < 10
  # Instrucciones
  put i
  i +=1
end
```

Output

```ruby
0
1
2
3
4
5
6
7
8
9
```

### 2. While

Programa que reprodueix les tres primeres cançons, però pregunta si es vol para o no. Cal posar-li un nombre per tal que seguisca reproduint. En cas de voler parar cal posar `0`.

```ruby
playlist = ["Primera cançò", "Segona cançò", "Tercera cançò"]
playing = true

index_song = 0

# Si hi ha cançons reproduint en la llista de reproducció
# i està reproduint (playing es verdader)
# llavors ha d'executar les cançons.

while (index_song < playlist.length) && playing
  puts "Reproduint #{playlist[index_song]}"

  index_song += 1

  # si ens torna 0, fem stop, si no seguim reproduint
  print "Col·loca 0 per a detenir la reproducció: "
  resposta = gets().chomp.to_i

  playing = resposta !=0
end
```

### 3. Until

**Until** es a **While** el que **less** és a **if**.

```ruby
numero_magico = 20

print "Adivina el número mágico: "
numero_usuario = gets().chomp.to_i

while numero_usuario != numero_magico
  print "Incorrecto. Adivina otra vez: "
  numero_usuario = gets().chomp.to_i
end

puts "Felicidades. ¡Adivinaste!"
```

Output

```ruby
Adivina el número mágico: 3
Incorrecto. Adivina otra vez: 4
Incorrecto. Adivina otra vez: 5
Incorrecto. Adivina otra vez: 7
Incorrecto. Adivina otra vez: 9
Incorrecto. Adivina otra vez: 22
Incorrecto. Adivina otra vez: 3
Incorrecto. Adivina otra vez: 20
Felicidades. ¡Adivinaste!
```

Ens fixem en la sentència `while numero_usuario != numero_magico` la qual evalúa fins que el valor done `true`.

Ahora cambiamos `while` por `until` la cual evalúa el valor hasta que sea `false`.

Concretament el canvi serà aquest:

```ruby
while numero_usuario != numero_magico

# canviem per

until numero_usuario == numero_magico
```

Així obtindrem el mateix resultat.

```ruby
Adivina el número mágico: 5
Incorrecto. Adivina otra vez: 3
Incorrecto. Adivina otra vez: 6
Incorrecto. Adivina otra vez: 7
Incorrecto. Adivina otra vez: 2
Incorrecto. Adivina otra vez: 34
Incorrecto. Adivina otra vez: 55
Incorrecto. Adivina otra vez: 20
Felicidades. ¡Adivinaste!
```

