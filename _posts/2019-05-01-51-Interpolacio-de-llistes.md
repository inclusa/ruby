---
layout: post # note, post, report, capture
title: 51 Interpol·lació de llistes
date: 2019-05-01
description: Incrustar variables dins del text
keywords: interpolar llista
coments: 
---

Codi en el qual es pot generar una combinació de llistes amb text.

Editant la llista de l'arxiu podem generar un arxiu en Markdown, així:

```
ruby arxiu.rb > arxiu.md
```

Després podrem passar-lo a PDF mitjantçant Pandoc, així:

```
pandoc arxiu.md -o arxiu.pdf
```

Codi de l'script al qual anomenarem `arxiu.rb`:

```ruby
#!/usr/bin/ruby -wKU
# coding: utf-8

variable = ['Pepe Cognom Cognom', 'Emili Cognom Cognom', 'Jorge Cognom Cognom', 'Ana Cognom Cognom']

variable.each do |a|
  puts "


% Título
% #{a}
% New York, 30 de abril de 2019

Texto Lorem Ipsum en el què l'alumne *#{a}* bla, bla, bla.

Finalmente, el el alumno *#{a}* ha de dur a classe...
"
end
```