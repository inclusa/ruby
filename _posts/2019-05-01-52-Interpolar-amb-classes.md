---
layout: post # note, post, report, capture
title: 52 Interpol·lar amb classes
date: 2019-05-01
description: Interpol·lació utilitzant classes
keywords: 
coments: 
---

Per tal d'interpol·lar utilitzant classes farem això:

```ruby
#!/usr/bin/ruby -wKU
# coding: utf-8

# The Greeter class
class Greeter
  def initialize(name)
    @name1 = name.capitalize
  end

  def salute
    puts "Hola #{@name1}!"
  end
end

# Create a new object
g = Greeter.new("món")

# Output "Hello World!"
g.salute

# Write in a file
#File.write('/path/to/file', 'Some glorious content')
#To append to the file, if it already exists, use:
#File.write('/path/to/file', 'Some glorious content', mode: 'a')
File.write('file.md', 'Text generat')

puts "Has creat un arxiu anomenat file.md"
puts "Pots utilitzar Pandoc per generar pdf"
```

Anomenarem aquest codi `file.rb`.

Executarem així: `ruby file.rb`.

Això ens generarà un arxiu `file.md` què haurem de convertir mitjançant `Pandoc`, a `pdf`.

Així:

```
pandoc file.md -o file.pdf
```

Introduïm el color amb la gemma `colorize`, què podem trobar a [colorize](https://github.com/fazibear/colorize)

```ruby
#!/usr/bin/ruby -wKU
# coding: utf-8

require 'colorize'

# The Greeter class
class Greeter
  def initialize(name)
    @name1 = name.capitalize
    @name2 = name
  end

  def ratlla
    puts "------------------------------------------"
  end
  
  def salute
    puts "Hola" + " #{@name1}".colorize(:light_green) + "! En minúscula" +  " #{@name2}!".colorize(:light_red)
  end

  def text
    puts "Lorem Ipsum" + " #{@name1}".colorize(:light_red) + ", ara una altra" + " #{@name2}".colorize(:light_blue)
  end

  def command
    puts "Arxius en directori: "
    puts `ls`.colorize(:blue)
  end
  
end

# Create a new object
m = Greeter.new("")
a = Greeter.new("món")
b = Greeter.new("pedra")
c = Greeter.new("taula")
d = Greeter.new("martell")
z = Greeter.new("")

# Output "Hello World!"

m.ratlla

a.salute
b.salute
c.salute
d.salute

a.text
b.text
c.text
d.text

m.ratlla

z.command

# Write in a file
#File.write('/path/to/file', 'Some glorious content')
#To append to the file, if it already exists, use:
#File.write('/path/to/file', 'Some glorious content', mode: 'a')

File.write('file.md', 'Lorem Ipsum')

puts "Has creat un arxiu anomenat file.md, què conté 'Lorem Ipsum'"
puts "Pots utilitzar Pandoc per generar pdf"
```
