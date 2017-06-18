---
layout: post # page | post
title: 50 Expressions regulars
date: 2017-06-18 
description: Expressions regulars   # Argument
keywords: regular expressions       # Paraules clau
coments: true    # Comentaris activats
---

Es posen entre `/ /`.

Qualservol caracter concorda amb si mateix, excepte aquests caracters especials `\/^$|.+*?()[]\{\}` que tenen distintes funcions dins de les expressions. Per poder buscar-los, hi ha que usar la seqüència d'escape `\`. Exemple: `\\`, `\/`, ...

`^` busca el principi de una línea, `$` busca el final de una línea.

`.` busca qualsevol caràcter.

Si `a,b` són expressions regulars, llavors:
  - `ab` és també una expressió regular
  - `a*` és una expressió regular que busca la closca d'a
  - `a+` és equivalent a `aa*`
  - `a|b`busca `a` o `b`
  - Les expressions poden ser agrupades per parèntesi, per exemple:
  
  ```
  /(a|b)c/   # busca ('ac', 'bc')
  /a|bc/     # busca {'a', 'bc'}
  ```
  
  - `[caracters]` # busca els caracters alfanumèrics
  
  ```
  /[a-zA-Z0-0/    #busca els caracters alfanumèrics
  ```
  
  - `[^caracters]` busca els caracters que NO pertanyen al rang.
  
  Font: [Ruby en 15 minuts](http://rubytutorial.wikidot.com/ruby-15-minutos#toc30)
