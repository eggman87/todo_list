#!/usr/bin/env ruby

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

if __FILE__ == $0

end
