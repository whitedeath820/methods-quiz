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

def closer_to(tar, ga, gb)
	m1 = (tar - ga).abs
	m2 = (tar - gb).abs
	if m1 > m2
		return gb
	elsif m1 < m2
		return ga
	else
		return 0
	end
	
end
	# TODO - write two_as_one?

	# TODO - write pig_latinify

end