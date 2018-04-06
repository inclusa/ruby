---
layout: post
title: 05 Variables
date: ds 15 apr 2017 06:11:08 CEST 
description: Alcanç de les variables 
keywords: variable
coments: true
---

Alcanç de les variables

- `Globals`: Les podem utilitzar en qualsevol part. Comança amb un `$`. Un programador experimentat no utilitza varaibles globals. Perquè en qualsevol part de codi es pot modificar.
- `D'instaǹcia`: Sols són visibles dins de la clase on l'hem modificat. S'indica amb un un signe `@`.
- `Locals`: No necessiten signe. Sols està disponibl en el mètode en el qual es declara.

```ruby
$exemple = "Variable global"

class HolaMundo
        def initialize()
                @exemple = "Sóc una varaible d'instància"
                $exemple = "Variable global modificada"
        end
        def saluda()
                example = "Sóc una variable local"
                puts $exemple
                puts @exemple
                puts exemple
        end
end

objeto = HolaMundo.new()
objeto.saluda
gets()
```

Obtenim

```ruby
Variable global
Sóc una varaible instància
Soc una variable local
```
