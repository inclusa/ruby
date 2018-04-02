# Exemple de mètodes públics

class Test
	def method01
		puts "Exemple de dos mètodes"
	        puts "dins d'una classe"
	end

	def method02
		a = 1
		b = 2
		c = a + b
		puts "---------"
		puts "1 + 2 = #{c}"
		puts "---------"

	end
end

testObj = Test.new # Execució de la classe
testObj.method01   # Execució del mètode
testObj.method02  # Execució del mètode
