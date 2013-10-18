#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby
# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  def test_unitario_suma
      assert_equal("3 2", Fraccion.new(1,2).suma(2,2).to_s)
      assert_equal("7 2", Fraccion.new(2,1).suma(3,2).to_s)
      assert_equal("47 42", Fraccion.new(5,6).suma(2,7).to_s)
  end
  def test_unitario_resta
      assert_equal("1 2", Fraccion.new(3,2).resta(2,2).to_s)
      assert_equal("1 2", Fraccion.new(2,1).resta(3,2).to_s)
      assert_equal("23 42", Fraccion.new(5,6).resta(2,7).to_s)
  end
  def test_unitario_multiplicacion
      assert_equal("9 10", Fraccion.new(3,2).producto(3,5).to_s)
      assert_equal("3 10", Fraccion.new(1,2).producto(3,5).to_s)
  end
  def test_unitario_division
      assert_equal("4 3", Fraccion.new(2,1).division(3,2).to_s)
      assert_equal("35 12", Fraccion.new(5,6).division(2,7).to_s)
  end
end
