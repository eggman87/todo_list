class Task

	attr_accessor :title
	attr_accessor :priority
	attr_accessor :complete
	alias_method  :complete?, :complete

	def initialize(title, priority = 10) 
		self.title = title 
		self.priority = priority
		self.complete = false 
	end

end

if __FILE__ == $0

end