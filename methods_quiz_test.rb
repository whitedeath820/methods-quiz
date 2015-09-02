require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	def test_has_teen
		assert_equal true, @m.has_teen(13, 20, 12)
		assert_equal false, @m.has_teen(1, 20, 12)
		assert_equal true, @m.has_teen(1, 15, 20)
		assert_equal true, @m.has_teen(1, 1, 15)
		assert_equal true, @m.has_teen(15, 15, 15)
	end

	def test_not_string
		assert_equal "nothi", @m.not_string("hi")
		assert_equal "notbye", @m.not_string("notbye")
	end

	def test_icy_hot?
		assert_equal true, @m.icy_hot?(-1, 101)
		assert_equal false, @m.icy_hot?(-1, 100)
		assert_equal false, @m.icy_hot?(0, 101)
		assert_equal false, @m.icy_hot?(0, 100)
	end

	def test_closer_to
		assert_equal 10, @m.closer_to(11, 10, 1)
		assert_equal 0, @m.closer_to(0, -1, 1)
		assert_equal 11, @m.closer_to(10, 0, 11)
	end

	def test_two_as_one?
		assert_equal true, @m.two_as_one?(2, 1, 1)
		assert_equal false, @m.two_as_one?(1, 1, 1)
		assert_equal true, @m.two_as_one?(0, 0, 0)
		assert_equal true, @m.two_as_one?(-1, -1, 0)
		
	end
end
