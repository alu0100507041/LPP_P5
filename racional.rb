# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  #Constructor de la clase
  def initialize (n,d)
    mcd = gcd(n,d)
    @n = n / mcd
    @d = d / mcd
  end

  #Metodo convertir a string
  def to_s #devuelve una cadena
    return %Q(#{@n} #{@d})
  end

  #Metodo suma
  def suma

  end
end
