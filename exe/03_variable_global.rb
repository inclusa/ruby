# Variable global

$variable_global = "programació"

class Test
	def method01
		puts "Exemple de dos mètodes de #$variable_global"
	        puts "dins d'una classe"
	end

	def method02
		a = 1
		b = 2
		c = a + b
		puts "Programació aritmètica"
		puts "---------"
		puts "1 + 2 = #{c}"
		puts "---------"

	end
end

testObj = Test.new # Execució de la classe
testObj.method01   # Execució del mètode
testObj.method02  # Execució del mètode
