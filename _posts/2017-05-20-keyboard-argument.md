---
layout: post
title: 27 Keyword arguments
date: 2017-05-20 ds 07:34
description: Keyword arguments
keywords: keyboard arguments
coments: true
---

Keyword Arguments

Arguments amb noms

A partir de Ruby 2.1

### 1. Nombre y un parámetro inicial

```ruby
def hola(nombre:"",edad:0)
  if edad > 30
    puts "Hola señor #{nombre}"
  elsif edad < 30
    puts "Hola joven #{nombre}"
  end

end

hola(nombre:"Uriel", edad: 23)
```

Output

```ruby
Hola joven Uriel
```


### 2. En cas de no assignar valora a l'edat

```ruby
def hola(nombre:"",edad:0)
  if edad > 30
    puts "Hola señor #{nombre}"
  elsif edad < 30
    puts "Hola joven #{nombre}"
  end

end

hola(nombre:"Uriel")
```

Output

```ruby
Hola joven Uriel
```

Ix el mateix perquè a la línia `1` li assignem el valor `edad:0`.

D'aquesta manera els dos paràmetres són opcionals perquè n'hi ha valors per defecte.

### 3. Ordre

L'ordre dels paràmetres és arbitrari, així es poden cridar al revés.

```ruby
def hola(nombre:"",edad:0)
  if edad > 30
    puts "Hola señor #{nombre}"
  elsif edad < 30
    puts "Hola joven #{nombre}"
  end

end

hola(edad:23 nombre:"Uriel")
```

Output

```ruby
Hola joven Uriel
```
### 4. Afegint `splash operator`

D'aquesta manera podem posar paràmetres infinit.

```ruby
def hola(nombre:"",edad:0,**options)
  if edad > 30
    puts "Hola señor #{nombre}"
  elsif edad < 30
    puts "Hola joven #{nombre}"
  end

  puts options[:animal_favorito]

end

hola(nombre:"Uriel", edad: 23,color_favorito:"Azul",animal_favorito:"Cocodrilo")
```

Output

```ruby
Hola joven Uriel
{:color_favorito=>"Azul", :animal_favorito=>"Cocodrilo"}
```

### 5. Fer un argument obligatori

Per fer-ho col·loquem dos punts darrere de l'argument.



