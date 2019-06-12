---
layout: post # note, post, report, capture
title: 66 Consulta Movie
date: 2019-06-12
description: 
keywords: 
coments: 
---

Per tal de fer una consulta des del termimal sobre les dades d'una pel·lícula concreta.

```ruby
ruby movie.rb Gladiator
==================================================
| Title: Gladiator
| Year: 2000
| Tomato: 76%
| Rated: R
| Genre: Action, Adventure, Drama
| Director: Ridley Scott
| Actors: Russell Crowe, Joaquin Phoenix, Connie Nielsen,
| Oliver Reed
| 
| Plot: A former Roman General sets out to exact
| vengeance against the corrupt emperor who
| murdered his family and sent him into slavery.
| 
==================================================
```

Font: [Hakemeyer](https://github.com/jakewmeyer/Ruby-Scripts/blob/master/movie-search/movie.rb)

```ruby
#!/usr/bin/env ruby
# CLI app that searched movies and returns info

require 'json'
require 'uri'
require 'net/http'

# Word wrapping for consise output
def wrap(s, width = 78)
  s.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n| ")
end

def movie
  # This is a live API key, don't absue it
  api_key = ENV['OMDBAPI_API_KEY'] || '946f500a'

  movie_name = ARGV

  # Program escape statements
  if movie_name == 'quit' || movie_name == 'exit'
    puts
    exit(1)
  else
    uri = URI("http://www.omdbapi.com/?t=#{movie_name}&apikey=#{api_key}")
    response = Net::HTTP.get(uri)
    info = JSON.parse(response)
  end

  # Exception for invalid response
  if info['Response'] == 'False'
    puts
    puts 'No Movie Found'
    puts
    exit(1)
  else
    # Rescue if no tomato score
    # Word wrap added to plot and actors
    begin
      title = info['Title']
      year = info['Year']
      score = info['Ratings'][1]['Value']
    rescue
      score = 'No Score Found'
    end

    rated = info['Rated']
    genre = info['Genre']
    director = info['Director']
    actors = wrap(info['Actors'], 48)
    plot_unformatted = info['Plot']
    plot = wrap(plot_unformatted, 48)

    puts '=================================================='
    puts "| Title: #{title}"
    puts "| Year: #{year}"
    puts "| Tomato: #{score}"
    puts "| Rated: #{rated}"
    puts "| Genre: #{genre}"
    puts "| Director: #{director}"
    puts "| Actors: #{actors}"
    puts "| Plot: #{plot}"
    puts '=================================================='
  end
end

movie
```