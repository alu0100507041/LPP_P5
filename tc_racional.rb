# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

  def test_unitario_suma
    assert_equal("2 1", Fraccion.new(1,1).suma(1,1).to_s)
  end

end
