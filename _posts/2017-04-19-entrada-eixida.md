---
layout: post
title: 09 Entrada i eixida
date: dc 19 abr 2017 07:50:39 CEST
description: Entrada i eixida de dades
keywords: input output
coments: true
---

L'extensió `io` es una de les formes d'entrada i eixida, perquè significa input i output.

```ruby
# IO => Input / Output

nombre = "Uriel"

puts "Hola #{nombre}"
```

Ioutput

```ruby
Uriel
```

El mètode `puts` és uno dels métodes que ens  permet introduir informació.

El mètodo `print` també ens permet introduir informació.

La diferencia es que `puts`agrega un salto de línia al final de la cadena.

No necessàriament és una cadena el que podem introduir, també pot ser un nombre.


```ruby
# IO => Input / Output

nombre = "Uriel"

puts 20
```

Objectiu: crear un programa que salude a qualsevol persona, no sols a Uriel.

```ruby
# IO => Input / Output

nombre = gets

puts "Hola #{nombre}"
```

`gets` fa una pausa, espera que l'usuari incorpore informació i l'assigana a la fariable `nombre`.

Introduïm `print` per tal d'escriure a la pantalla.

```ruby
# IO => Input / Output

print "Dónam el teu nom"

nombre = gets

puts "Hola #{nombre}"
```

Output

```bash
Dónam el teu nom: Alfons
Hola Alfons
```

Extenem el programa...

```ruby
# IO => Input / Output

print "Dóna'm el teu nom"

nombre = gets

puts "Hola #{nombre}"

puts "El teu nom té #{6} lletres" 
```

Output

```ruby
Dóna'm el teu nom: Alfons
Hola Alfons
El teu nom té 6 lletres
```

Ara comptem la quantitat de caracters de forma dinàmica.


```ruby
# IO => Input / Output

print "Dóna'm el teu nom"

nombre = gets

puts "Hola #{nombre}"

puts "El teu nom té #{"nombre".length} lletres"

```

Output

```ruby
Dóna'm el teu nom: Alfons
Hola Alfons
El teu nom té 7 lletres
```

Hi ha un bug... perquè la terminal el que està comptant és `Alfons\n` així doncs, suma un caracter.

Evitarem aquesta errada `restant-li 1`.

```ruby
# IO => Input / Output

print "Dóna'm el teu nom"

nombre = gets

puts "Hola #{nombre}"

puts "El teu nom té #{"nombre".length - 1} lletres"

```

Fem un xicotet canvi:

```ruby
# IO => Input / Output

print "Dóna'm el teu nom"

nombre = gets

puts "Hola #{nombre}"

puts "#{nombre} té #{"nombre".length - 1} lletres"

```

Ara el que passa és que no ho posa tot en una mateixa línia:

Output

```ruby
Dóna'm el teu nom: Alfons
Hola Alfons
Alfons
 té 6 lletres
```

Ho solucionarem d'aquesta manera: utilizarem el mètode `chomp`que el que fa és llevar l'últim caracter de la línea.


```ruby
# IO => Input / Output

print "Dóna'm el teu nom"

nombre = gets

nombre = nombre.chomp

puts "Hola #{nombre}"

puts "#{nombre} té #{"nombre".length} lletres"

```
Cal recordar que li hem llevat la indicació de que reste 1.

Output

```ruby
Dóna'm el teu nom: Alfons
Hola Alfons
Alfons té 6 lletres
```
