---
layout: post
title: 29 Initialize
date: 2017-05-22 dl 06:03
description: Mètode
keywords: initialize class
coments: true
---

Mètode inicialize o Mètode constructror

Té la característica que és un mètode que s'utilitza per inicialitzar valors que tindrà l'objecte.

Aquest mètode pot rebre arguments

```ruby
class Video
  attr_accessor :minutes, :title

  def initialize(title)
    self.title = title
    puts "Soy initialize"
  end

  def play
  end

  def pause
  end

  def stop
  end

end


video_30_curso_ruby = Video.new("Objetos y clases")

puts video_30_curso_ruby.title
```

Output

```ruby
Soy initialize
Objetos y clases
```

Cal no cargar en excés el mètode constructor.

