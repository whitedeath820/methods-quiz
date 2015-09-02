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
		assert_equal false,, @m.icy_hot?(0, 100)
	end

end
