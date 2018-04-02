playlist = ["Primera cançò", "Segona cançò", "Tercera cançò"]
playing = true

index_song = 0

# Si hi ha cançons reproduint en la llista de reproducció
# i està reproduint (playing es verdader)
# llavors ha d'executar les cançons.

while (index_song < playlist.length) && playing
  puts "Reproduint #{playlist[index_song]}"

  index_song += 1

  # si ens torna 0, fem stop, si no seguim reproduint
  print "Col·loca 0 per a detenir la reproducció: "
  resposta = gets().chomp.to_i

  playing = resposta !=0
end
