module MethodsQuiz
	
	def has_teen(a, b, c)
		a <= 19 && a >= 13 || b <= 19 && b >= 13 || c <= 19 && c >= 13
		
	end
	
	def not_string(str)
		if str[0, 3] == "not"
			return str
		else
			return "not" + str
		end
	end	

	def icy_hot?(a, b)	
		a > 100 && b < 0 || a < 0 && b > 100
	end
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end