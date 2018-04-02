def hola
  yield
end

nombre = "Uriel"

hola do
  nombre = "Marcos"
  puts "Hola #{nombre}"
end

puts nombre


