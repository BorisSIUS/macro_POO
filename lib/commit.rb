class Commit

	def initialize(name)
		@name = name
	end

	def push
		system("git add .")
		system("git commit -m '#{@name}'")
		system("git push origin master")
	end
end
