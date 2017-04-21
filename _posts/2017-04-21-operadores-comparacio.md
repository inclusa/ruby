---
layout: post
title: 11 Operadors de comparació
date: dv 21 abr 2017 06:35:47 CEST 
description: Operadors de comparació 
keywords: operators
coments: true
---

### 1. Observem el codi

```ruby
irb(main):001:0> 10 > 5
=> true
irb(main):002:0> 4 > 5
=> false
irb(main):003:0> 5 > 5
=> false
irb(main):004:0> 4 < 5
=> true
irb(main):005:0> 5 < 5
=> false
irb(main):006:0> 5<=5
=> true

```

### 2. Operador de comparació combinat

```ruby
irb(main):007:0> 10 >= 10
=> true
irb(main):008:0> 10 <=>10
=> 0
irb(main):009:0> 20 <=>10
=> 1
irb(main):010:0> 10 <=>20
=> -1
```

### 3. Operador de comparació d'igualtat `eql`

```ruby
irb(main):012:0> "hola" == "hola"
=> true
irb(main):013:0> 1 == 1.0
=> true
irb(main):014:0> 1.eql?(1.0)
=> false
```

Per tal de comparar que els dos valors són iguals i del mateix tipus cal utilitzar el mètode `eql`, ja que aquest compara tant si les dades són del mateix valor com si són del mateix tipus.


### 4. Operador de comparació d'igualtat `equal`

```ruby
irb(main):016:0> "hola".equal?("hola")
=> false
irb(main):018:0> "hola".object_id
=> 47029626310480
irb(main):019:0> "hola".object_id
=> 47029626302160
irb(main):020:0> 

```

Per tal de comparar si ocupen la mateixa adreça en la memòria cal utilitzar el mètode `equal`.

També compara si ocupen la mateixa adreça de memòria, les cadenes iguals no ocupen la mateixa adreça de memòria com es veu.


### 5. Operador de diferencia

```ruby
irb(main):020:0> 10 != 10 
=> false
```
