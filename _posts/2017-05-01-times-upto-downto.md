---
layout: post
title: 21 Times, Upto, Downto
date: dl 01 may 2017 09:04:51 CEST 
description: Iteradors
keywords: times upto downto
coments: true
---

Iteradores

Times, upto, downto

Un iterador es un método que internamente construye un cilo, este ciclo tiene características específicas, nos permite invocar un bloque basado en estas características dentro de un ciclo.

### 1. Times

Un nombre definit de vegades es va executar.

```ruby
# Times, upto, downto

# 1 - 10

10.times do |i|
  puts i
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

Per a imprimir des de l'`1` ca avegir `+1`

```ruby
10.times do |i|
  puts i + 1
end
```

Output

```ruby
1
2
3
4
5
6
7
8
9
10
```

Podem executar una cadena per entenre el iterador `times`

```ruby
10.times do
  puts "Me ejecutaré 10 vedes"
end
```

Output

```ruby
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
Me ejecutaré 10 vedes
```

Podem passar un argument al blog per a que s'execute 20 vegades.

```ruby
20.times do |i|
  puts i
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
10
11
12
13
14
15
16
17
18
19
```

### 2. Upto

`Upto` ens permet iniciar un cicle partint des d'un nombre i definint un nombre al qual volem arribar.

Voldria dir **fins arribar a**.

```ruby
1.upto(10) do |i|
  puts i
end
```

Output

```ruby
1
2
3
4
5
6
7
8
9
10
```

### 2. Downto

`Down` ens permet iniciar un cicle partint des d'un nombre i definint un nombre al qual volem arribar, però de forma descendent.

Voldria dir **fins arribar a**, de forma descentent.

```ruby
10.downto(1) do |i|
  puts i
end
```

Output

```ruby
10
9
8
7
6
5
4
3
2
1
```

Quan utilizar cada iterador, doncs quan siga més llegible.
