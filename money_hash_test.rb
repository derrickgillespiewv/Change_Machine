require "minitest/autorun"
require_relative "money_hash.rb"
class TestChange_Machine < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_1_penny
		assert_equal({:quarters=>0, :dimes=>0, :nickels=>0, :pennies=>1}, change_machine(1))
	end

	def test_4_penny
		assert_equal({:quarters=>0, :dimes=>0, :nickels=>0, :pennies=>4}, change_machine(4))
	end

	def test_1_nickle
		assert_equal({:quarters=>0, :dimes=>0, :nickels=>1, :pennies=>0}, change_machine(5))
	end

	def test_1_dime
		assert_equal({:quarters=>0, :dimes=>1, :nickels=>0, :pennies=>0}, change_machine(10))
	end
end