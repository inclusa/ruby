---
layout: post
title: 24 Operacions amb hashes
date: dt 16 mai 2017 04:34:26 CEST 
description: Operacions amb hashes 
keywords: hash
coments: true
---

22 Operacions amb hashes

### 1. Elements amb el mètode `length`

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

puts tutor.length
```

Output

```ruby
3
```

### 2. Comptar elements amb el mètode `size`

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

puts tutor.size
```

Output

```ruby
3
```

### 3. Mètode `has_key`

Torna `true` or `false` en resposta del que li preguntem.

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

puts tutor.has_key?(:nombre)
```

Output

```ruby
true
```

### 4. Mètode `keys`

Amb `keys` obtenim les claus.

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

puts tutor.keys
```

Output

```ruby
nombre
edad
cursos
```

### 5. Mètode `values`

Ens va a tornar els valors.

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

puts tutor.values
```

Output

```ruby
Uriel
23
10
```

### 6. Mètode clean

Neteja el `hash`.

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

tutor.clean

puts tutor
```

Output

```ruby
{}
```

### 7. Mètode delete

Elimina una clave en una pocisió específica.

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

tutor.delete(:cursos)

puts tutor
```

Output

```ruby
{:nombre=>"Uriel", :edad=>"23"}

```

### 8. Mètode empty

Avalua si el hash està buit.

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

tutor.clear

puts tutor.empty?
```

Output

```ruby
true
```

### 9. Mètode `index`

Demana la clau d'un valor concret.


```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

puts tutor.index("Uriel")
```

Output

```ruby
nombre
```

### 10. Mètode `has_value`

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

puts tutor.has_value?(:"Uriel")
```

Output

```ruby
True
```

### 11. Mètode `invert`

Invertex les **claus** en els **valors**.

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

puts tutor.invert
```

Output

```ruby
{:nombre=>"Uriel", :edad=>"23", :cursos=>10}
```

### 12. Combinar `dos hashes`

Combina els dos hash.

```ruby
tutor = {nombre: "Uriel", edad: "23", cursos: 10}

user_info = {apellido: "Hernandez", segundo_apellido: "Camacho"}

puts tutor.merge(user_info)
```

Output

```ruby
{:nombre=>"Uriel", :edad=>"23", :cursos=>10, :apellido=>"Hernandez", :segundo_apellido=>"Camacho"}

```

