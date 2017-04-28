---
layout: post
title: 18 Operacions amb llistes
date: dv 28 abr 2017 17:52:23 CEST 
description: Operacions amb llistes
keywords: list
coments: true
---

Operaciones con llistes

### 1. Definim i imprimim llistes

```ruby
calificaciones = %w[10 7 8 9 5 8 10]

puts calificaciones * 2
```

Output

```ruby
10
7
8
9
5
8
10
10
7
8
9
5
8
10
```
### 2. Imprimim separat per una cadena

```ruby
calificaciones = %w[10 7 8 9 5 8 10]

puts calificaciones * " - "
```

Output

```ruby
10 - 7 - 8 - 9 - 5 - 8 - 10
```

### 3. Convertint un llista en una cadena utilitzant `join`

```ruby
calificaciones = %w[10 7 8 9 5 8 10]

puts calificaciones.join("")
```

Output

```ruby
107895810
```

### 4. Imprimim el tipus de dada que genera ´join`

```ruby
calificaciones = %w[10 7 8 9 5 8 10]

puts calificaciones.join("").class.name
```

```ruby
String
```

### 5. Separem tots els arguments d'una cadena

```ruby
calificaciones = %w[10 7 8 9 5 8 10]

puts calificaciones.join(",").class.name
```

Output

```ruby
10,7,8,9,5,8,10
```

### 6. Ordenar llista de major a menor

```ryby
calificaciones = %w[10 7 8 9 5 8 10]

puts calificaciones.sort
```

Output

```ruby
10
10
5
7
8
8
9
```

### 7. Identificant les dades com a nombres `sort`

Llevem `%w` per tal que no identifique les dades com a string sino com a nombres.

Ara els ordena com a nombres i no com a strings.

```ruby
calificaciones = [10, 7, 8, 9, 5, 8, 10]

puts calificaciones.sort
```

Outbut

```ruby
5
7
8
8
9
10
10
```

### 8. Per ordenar de forma decreixen aquest nombres `sort.reverse`

```ruby
calificaciones = [10, 7, 8, 9, 5, 8, 10]

puts calificaciones.sort.reverse
```

```ruby
10
10
9
8
8
7
5
```

### 9. Invertir l'ordre en el qual estan introduides les dades cal utilitzar sols `reverse`

```ruby
calificaciones = [10, 7, 8, 9, 5, 8, 10]

puts calificaciones.sort.reverse
```

```ruby
10
8
5
9
8
7
10
```

### 10. Cercar una dada concreta `include()`

```ruby
calificaciones = [10, 7, 8, 9, 5, 8, 10]

puts calificaciones.include?(10)
```

Output

```ruby
true
```

### 11. Cercar una dada concreta `include()` funciona també per a cadenes

```ruby
calificaciones = [10, 7, 8, 9, 5, 8, 10, "hola"]

puts calificaciones.include?("hola")
```

Output

```ruby
true
```

### 12. Buscar el primer element `first` i l'últim `last`

```ruby
calificaciones = [10, 7, 8, 9, 5, 8, 6]

puts calificaciones.first

puts calificaciones.last
```

Output

```ruby
10
6
```
### 13. Demanar el mateix llista però sense elements repetits `uniq`

Torna valors únics, no torna valors repetits.

```ruby
calificaciones = [10, 7, 8, 9, 5, 8, 6]

puts calificaciones.uniq
```

Output

```ruby
10
7
8
9
5
```
### 14. Traure un element al atzar, random de la llista `sample`

```ruby
calificaciones = [10, 7, 8, 9, 5, 8, 10]

puts calificaciones.sample
```

Output

```ruby
8
```

