---
layout: post
title: 12 Operadors lògics
date: ds 22 apr 2017 06:48:34 CEST 
description: Operadors lògics i ordre d'execució
keywords: operators logics
coments: true
---

peradores lógicos

Els operadors lògics, normalmente s'utilitzen per tornar verdader o fals.

El que fan és conviar les operacions:

### 1. Operador AND

`&&` AND

```ruby
irb(main):002:0> (10 > 5) && (5 < 8)
=> true
```

Comprara que les dues operacons tornen verdader, si una torna fals és falsa.

```ruby
irb(main):003:0> (10 > 5) && (5 < 5)
=> false
```

També podem utilitzar la paraula explícita.

```ruby
irb(main):007:0> (10 > 5) and (5 < 8)
=> true
```

### 2. Operador OR

`||` OR

Una de les dues operacions ha de tornar verdader.

```ruby
irb(main):004:0> (10 > 5) || (5 < 5)
=> true
```

Si la primera dona verdader s'acaba l'execució, no es llig l'altra variable.

```ruby
irb(main):005:0> (10 > 5) || (hola)
=> true
```

Podem utilitzar la paraula explícita.

```ruby
irb(main):008:0> (10 > 5) or (5 < 5)
=> true
```

La idea és **utilitza els símbols** a menys que siga necessari no utilitzar-los.

### 3. Operador NOT

`!` NOT

```ruby
irb(main):009:0> !true
=> false
irb(main):011:0> !false
=> true
```

Es pot utilitzar amb lletres explítites.

```ruby
irb(main):012:0> not true
=> false
irb(main):013:0> not false
=> true
```

### 4. Prioritat d'execució

1 `**`

2 `!`

3  `* / %`

4 `+ -`

5 `< > >= <=`

6 `== <=> !=`

7 `&&`

8 `||`

9 `Asignació`

10 `not`

11 `or and`


```ruby
irb(main):014:0> 10 > 5 && 5 < 8
=> true
irb(main):015:0> !true && true
=> false
```

