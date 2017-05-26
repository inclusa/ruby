---
layout: post
title: 36 Arguments i valor retornat en bloc
date: 2017-05-26 20:30:00
description: Arguments i valor retornat en bloc
keywords: arguments
coments: true
---

```ruby
class Usuario
  attr_accessor :nombre

  def saludar
    yield(@nombre)
  end

end

uriel = Usuario.new

uriel.nombre = "Uriel"

uriel.saludar { |nombre| puts "Hola #{nombre}" }
uriel.saludar { |nombre| puts "Hello #{nombre}" }
```

Output

```ruby
Hola Uriel
Hello Uriel
```

També un bloc pot retornar un valor.

```ruby
class Usuario
  attr_accessor :nombre

  def saludar_with
    saludo = yield(@nombre)
    puts saludo
  end

end

uriel = Usuario.new

uriel.nombre = "Uriel"

uriel.saludar_with { |nombre|"Hola #{nombre}" }
uriel.saludar_with { |nombre|"Hello #{nombre}" }
```
Output

```ruby
Hola Uriel
Hello Uriel
```

El valor que un bloque retorna és l'última expressió dins del bloc mateixa.

Podriem canviar a múltiples expressions:

```ruby
class Usuario
  attr_accessor :nombre

  def saludar
    saludo = yield(@nombre)
    puts saludo
  end

end

uriel = Usuario.new

uriel.nombre = "Uriel"

uriel.saludar do |nombre|
  saludo = "Hola #{nombre}"
  saludo
end

uriel.saludar { |nombre|"Hello #{nombre}" }
```

Output

```ruby
Hola Uriel
Hello Uriel
```

