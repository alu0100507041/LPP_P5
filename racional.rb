# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  def initialize (*args)
    if args.size == 2
      @n = args[0]
      @d = args[1] 
    else
      @n = args[0]
      @d = 1
    end
    puts n
    puts d
  end
end
