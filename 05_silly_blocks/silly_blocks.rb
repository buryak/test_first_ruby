def reverser
	result = yield.split.map { |word| word.reverse }.join(' ')
end

def adder(num=1)
	num = yield+num
end

def repeater(num=1)
	num.times do
		yield
	end
end