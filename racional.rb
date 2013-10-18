# Implementar en este fichero la clase para crear objetos racionales

require "./mcm.rb"
require "./gcd.rb"

class Fraccion
   #Constructor
   def initialize(n,d)
        @n = n
        @d = d
   end
   
   #Devuelve una cadena en representacion racional  
   def to_s
      return "#{@n} #{@d}"
   end

   #Suma
   def suma(x,y)
      d = mcm(@d,y) #minimo comun multiplo de los divisores
      n = ((d/@d) * @n) + ((d/y) * x) #calcular el numerador
      return Fraccion.new(n, d)
   end

   #Resta
   def resta(x,y) 
      d = mcm(@d,y) #minimo comun multiplo de los divisores
      n = ((d/@d) * @n) - ((d/y) * x) #calcular numerador
      return Fraccion.new(n, d)       
   end

   #Multiplicacion
   def producto(x,y) 
      n = @n * x #numerador por numerador
      d = @d * y #denominador por denominador
      return Fraccion.new(n, d)
   end

   #Division
   def division(x,y) 
      n = @n*y #numerador por denominador
      d = @d*x #denominador por numerador
      return Fraccion.new(n, d)
   end

end

