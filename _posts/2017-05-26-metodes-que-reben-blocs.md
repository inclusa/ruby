---
layout: post
title: 36 Mètodes que reben blocs
date: 2017-05-23 20:15:00
description: Mètodes que reben blocs
keywords: methods
coments: true
---

Definim un mètode:

```ruby
def hola
end

hola { puts "Hola Uriel" ]
```

Output

```ruby

```

No s'executa res, no s'imprimix res perquè manca la instrucció `yield` què crida el bloc `hola { puts "Hola Uriel" }`.

Així afegim `yield` per tal que s'imprimisca el bloc.

```ruby
Hola Uriel
```

També es pot fer utilitzant `do` i `end`.

```ruby
def hola
  yield
end

hola do
  puts "Hola Uriel"
end
```
Output

```ruby
Hola Uriel
```

En cas de no enviar cap bloc donaria error.

```ruby
def hola
  yield
end

hola ()
```

Com que yield no troba cap bloc per executar ens torna una errada.

```ruby
mis_bloques.rb:1:in `hola': wrong number of arguments (given 1, expected 0) (ArgumentError)
	from mis_bloques.rb:5:in `<main>'
```

Per a solucionar aquest error podem recòrrer al mètode de Ruby `block_given?`. Això ens donarà verdader quan rebem un bloc i fals quan no el rebem.


```ruby
def hola
  yield if block_given?
end

hola
```

Output

```ruby

```

En cas d'enviar un bloc, l'executa:

```ruby
def hola
  yield if block_given?
end

hola { puts "Hola mundo" }
```

Output

```ruby
Hola mundo
```

Així podem executar el mètode amb o sense bloc.

```ruby
def hola &bloque
  bloque.call if block_given?
end

hola { puts "Hola mundo" }
```

Output

```ruby
Hola mundo
```

`&` És especialment interessant quan estem utilitzant `initialitation`.

`yield` cal utilitzar-lo per defecte.

