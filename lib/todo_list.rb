require "json"

class TodoList
	def initialize( )
		@taskList = []
	end 
	def add(task) 
		@taskList << task 
	end
	def tasks 
		@taskList
	end

	def save(file_name)
		#serialize to string 
		serialized_tasks = '['
		serialized_tasks += self.tasks.map { |t| t.to_json }.join(',')
		serialized_tasks += ']'

		#write to file
		File.open(file_name, "w") do |f|
			f.write(serialized_tasks)
		end
	end
	def self.load(file_name)
		todoList = TodoList.new
		taskHash = JSON.parse( IO.read(file_name))

		#not proud of this, but it works! Imagine this can be done in much less lines. 
		taskArray = taskHash.to_a
		taskArray.each do |t|
			hash = JSON.parse(t.to_json)
			todoList.add(Task.fromJsonHash(hash))
		end
		todoList
	end
end
