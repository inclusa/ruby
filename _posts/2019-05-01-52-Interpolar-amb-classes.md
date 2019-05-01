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