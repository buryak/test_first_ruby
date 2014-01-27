def echo(string)
	return "#{string}"
end

def shout(caps)
	return "#{caps.upcase}"
end

def repeat(rep, num = 2)
	return ("#{rep} "*num).strip
end

def start_of_word(word, num)
	return word[0..(num-1)]
end

def first_word(string)
	split_up = string.split(" ")
	return split_up[0]
end

def titleize(string)
	string.capitalize!
	str_array = string.split(" ")
	final_result = str_array.map do |x|
		if ["and", "over", "the"].include?(x)
			x
		else
			x.capitalize
		end
	end
	final_result.join(" ")
end
