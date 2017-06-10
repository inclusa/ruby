---
layout: post # page | post
title: 41 Entorn Oh My Zsh
date: 2017-06-10 
description: Configuració de RVM en l'entorn Oh My Zsh  # Argument
keywords: rmv zsh ohmyzsh  # Paraules clau
coments: true    # Comentaris activats
---

Per tal que funcion l'entorn Oh My Zsh o Zsh amb **Ruby Version Manager** caldrà afegir a l'arxiu `.zshrc` aquesta línia:

```
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
```

D'aquesta manera s'iniciarà el codi `source "$HOME/.rvm/scripts/rvm` cada vegada que iniciem el terminal.

Caldrà fer aquesta tasca sempre que instal·lem [https://rvm.io/](https://rvm.io/)
