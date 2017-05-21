---
layout: post
title: 28 Classes i objectes
date: 2017-05-21 dg 05:31
description: Classes i objectes
keywords: class objects
coments: true
---

Classes i objectes

### 1. Definició

En Programació Orientada a Objectes (POO), els dos conceptes bàsics a tractar són les **classes** i els **objectes**.

Les classes defineixen el comportament que tindan els objectes.

En un restauran les **classes** serien la **recepta** de cada plat. Cada plat representaria un **objecte**.

Una **classe** s'encarrega de definir:

- Atributs
- Mètodes
- Camps
- Events

Tot això és informació que va a tenir un objecte.

En Ruby la convenció és utilitzar majúscula per al nom de la classe i utiitzar **CamelCase** per a separar les paraules. Per a les variables utilitzarm **snake_case**.

Una classe comensa per la paraula `class` i acaba amb la parauala `end`.

Definirem una classe amb els següents **mètodes**: `play`, `pause` i `stop`.

El que els diferencia a aquests mètodes dels que hem vis fins ara és que, precisament estan dins d'una classe.

També definirem un **atribut**: `atrr_accessor`, amb els seguents atributs `:minutes`, `:title`.

Així, centrem l'atenció en la **classe**:

```ruby
class Video
  attr_accessor :minutes, :title

  def play
  end

  def pause
  end

  def stop
  end

end
```

Ara, a continuació crearem un **objecte**:

```ruby
Video.new
```

Guardarem l'objecte dins d'una variable:

```ruby
video_30_curso_ruby
```

Així:

```ruby
video_30_curso_ruby = Video.new
```

D'aquesta manera parlarem que això és un **objecte** de la **classe** Video o una **instància** de la **classe** Video.

Ara, aquest **objecte**:

```ruby
video_30_curso_ruby = Video.new
```

Pot executar els **mètodes** `play`, `pause` i `stop` i canviar els atributs `:minutes` i `:title` sense modificar altres objectes.

Així creem més **objectes** i els **imprimirem** amb el comandament `puts`:

```ruby
video_30_curso_ruby = Video.new

video_30_curso_ruby.title = "Objetos y clases"

video_31_curso_ruby = Video.new

video_31_curso_ruby.title = "Atributos"

puts video_30_curso_ruby = Video.new

puts video_31_curso_ruby = Video.new
```

### 2. Fluxe de treball

```ruby
class Video
  attr_accessor :minutes, :title

  def play
  end

  def pause
  end

  def stop
  end

end


video_30_curso_ruby = Video.new

video_30_curso_ruby.title = "Objetos y clases"

video_31_curso_ruby = Video.new

video_31_curso_ruby.title = "Atributos"

puts video_30_curso_ruby.title

puts video_31_curso_ruby.title
```

Output

```ruby
Objetos y clases
Atributos
```

Cada objecte guarda un **estat** propi per als seus **atributs**.

Així l'estat de l'atribut `title` és `Objetos y clases`. Per altra banda, l'estat de l'atribut `title` és `Atributos`.

Podriem tenir molts **objectes**, cada objecte va ha tenir el seu propi **estat**, encara que cada estat estiga generat a partir de la mateixa **classe**.

Pensar en objectes requereix de pràctica.


Font: [Código Facilito](http://codigofacilito.com/videos/27-curso-ruby-clases-y-objetos)

