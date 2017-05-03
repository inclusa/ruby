---
layout: post
title: 02 Comentaris
date: dv 14 apr 2017 00:11:14 CEST  
description: Agregar comentaris
keywords: coments
coments: true
---


Per agregar una línea de comentaris utilitzarem el caracter `#`

Per agregar un blog de comentaris ho farem així:

```ruby
=begin
	Ací fem la definició de la classe HolaMundo.
	Coloquem un métode constructor.
	Per últim creem un métode saluda.
=end
```

Veiem tot el codi per tal de veure-ho estructurat:

```ruby
=begin
        Ací fem la definició de la classe HolaMundo.
        Coloquem un métode constructor.
        Per últim creem un métode saluda.
=end

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
