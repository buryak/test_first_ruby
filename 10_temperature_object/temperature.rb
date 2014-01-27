class Temperature
	def initialize(hash)
		@hash = hash
	end

	def self.in_celsius(temp_c)
		new({:c => temp_c})
	end

	def self.in_fahrenheit(temp_f)
		new({:f => temp_f})
	end


	def to_fahrenheit
		if @hash.has_key?(:c)
			return ((@hash[:c].to_f)*(9/5.to_f)+32).to_i
		else
			return @hash[:f]
		end
	end

	def to_celsius
		if @hash.has_key?(:f)
			return ((@hash[:f].to_f - 32)*(5/9.to_f)).to_i
		else
			return @hash[:c]
		end
	end
end

class Celsius < Temperature
	def to_celsius
		return @hash
	end

	def to_fahrenheit
		return ((@hash.to_f)*(9/5.to_f)+32).to_i
	end
end

class Fahrenheit < Temperature
	def to_celsius
		((@hash.to_f - 32)*(5/9.to_f)).to_i
	end

	def to_fahrenheit
		@hash
	end
end