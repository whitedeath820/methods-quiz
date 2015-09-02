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

	def two_as_one?(a, b, c)
		ab = a + b
		ac = a + c
		bc = b + c
		ab == c || ac == b || bc == a
	end

	def pig_latinify(str)
		#removes all crap from string
		final = str.delete(' ').downcase.gsub(/[^a-zA-Z ]/,'')
		if final == "fuck" || final == "bitch" || final == "motherfucker" || final == "fucker" || final == "asshole" || final == "ass"
			final2 = final.gsub(/[aeiou]/, '*')
			return final2
		else	
			if final[0] == 'a' || final[0] == 'e' || final[0] == 'i' || final[0] == 'o' || final[0] == 'u'
				return final + "way"
			else
				return final + "ay"
			end
		end
	
	end

end