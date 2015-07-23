require "json"

class Task
	attr_accessor :title, :priority, :complete
	alias_method  :complete?, :complete

	def initialize(title, priority = 10, complete = false) 
		self.title = title 
		self.priority = priority
		self.complete = complete 
	end

	def complete
		self.complete = true	
	end

	def to_json
		hash = { 'title' => self.title, 'priority' => self.priority, 'complete' => self.complete }
		hash.to_json
	end

	def self.fromJsonHash(jsonHash) 
		Task.new(jsonHash['title'], jsonHash['priority'], jsonHash['complete'])
	end
end 