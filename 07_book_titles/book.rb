class Book

	def title=(string)
		@title = string
	end

	def title
		string = @title.capitalize
		string = string.split(" ")
		string.map do |x|
			if ["the", "a", "an", "and", "in", "of"].include?(x)
				x
			else
				x.capitalize
			end
		end.join(" ")
	end
end