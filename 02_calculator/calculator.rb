def add(a,b)
	return a+b
end

def subtract(a,b)
	return a-b
end

def sum(array)
	return 0 if array.empty?
	array.inject(:+)
end

def multiply(array)
	return 0 if array.empty?
	array.inject(:*)
end

def factorial(num)
	(1..num).inject(:*)
end
