---
layout: post
title: 34 Polimorfisme
date: 2017-05-26 17:00:00
description: Polimorfisme
keywords: polymorphism
coments: true
---

Polimorfisme és el concepte de programació orientada a objectes en el qual múltiples objectes responguen de maneres distintes al mateix missatge.

Si diguerem que `talleu`:

- Un cuiner tellaria menjar
- Un perruquer tallaria cavell
- Un actor deixaria d'actuar

La manera de respondre és distinta.

Dos conceptes que estan relacionat amb el **polimorfisme** són l'**herència** i les **interfaces**.

```ruby
class Video
  def play
  end
end


class Vimeo < Video
  def play
    p "Inserta el reproductor Vimeo"
  end
end

class YouTube < Video
  def play
    p "Inserta el reproductor de YouTube"
  end
end

videos = [YouTube.new, Vimeo.new, Vimeo.new, YouTube.new, YouTube.new]

videos.each do |video|
  video.play
end
```

Output

```ruby
"Inserta el reproductor de YouTube"
"Inserta el reproductor Vimeo"
"Inserta el reproductor Vimeo"
"Inserta el reproductor de YouTube"
"Inserta el reproductor de YouTube"
```

Tots els mètodes reponen al mètode `play` perquè tots estan heretant del mètode **Video**.

El cas és que no ens importa on estiguen els videos, el que importa és que s'han de reproduir.

En la iteració no hi ha ninguna referència a Vimeo o Youtube. En alguns llenguatges existeixen les interfaces, en Ruby no, s'utilitza un concepte anomenat **do type**, es diu així perquè el concepte fa referència a la idea de que si alguna cosa és paregut el tractarà com el que necessitem, si té els elements que necessita el tractarà d'aquesta manera.

Així, si pot fer **play** és un video.

No importa el tipus de dades sinó els mètodes i atributs que té. Si el tipus de dada no importa no necessitem interfaces per al polimorfisme.

En aquest cas no hauria necessitat d'utilitzar herència per tal d'utilitzar polimorfisme. Així funcionaria igualment d'aquesta manera:

```ruby
class Vimeo 
  def play
    p "Inserta el reproductor Vimeo"
  end
end

class YouTube 
  def play
    p "Inserta el reproductor de YouTube"
  end
end

videos = [YouTube.new, Vimeo.new, Vimeo.new, YouTube.new, YouTube.new]

videos.each do |video|
  video.play
end
```


