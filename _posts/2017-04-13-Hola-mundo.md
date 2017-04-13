---
layout: post
title: 01 Hola món
date: dv 14 abr 2017 00:00:07 CEST 
description: Iniciant la prongramació creant una classe
keywords: class
coments: true
---

Instal·lació

```bash
sudo apt install ruby irb rdoc
```

Saber la versió de Ruby

```bash
ruby -v
```

Imprimint `Hola món`:

```ruby
class HolaMundo
        def initialize()
        end
        def saluda()
                puts "Hola mundo"
        end
end

objeto = HolaMundo.new()
objeto.saluda
gets()
```
