class TodoList
	def initialize
		@taskList = []
	end 
	def add(task) 
		@taskList << task 
	end
	def tasks 
		@taskList
	end
end