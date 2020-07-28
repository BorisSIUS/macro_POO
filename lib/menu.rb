class Menu #Class d'action

	def main

		while true

			puts "Choose one option:"
			puts "1- push a commit"
			puts "2- initialize a ruby folder"
			puts "3- create a repository on github"
			puts "press <ENTER> to exite the program"

			case user_choice = gets.chomp #user choose a number
			when "1" # == if user_choice == "1" 
				puts "initialize ruby folder start"
				current_folder = Folder.new
				current_folder.create_folder
				current_folder.create_file
				current_folder.execute_program
				puts "ruby folder initialized"
			when "2"
				puts "commit push start"
				commit
				puts "commit pushed"
			when "3"
				puts "create repository start"
				# fire class method
			else
				break
			end
		end
	end

	def commit
		puts "Choose commit name:"
		commit_name = gets.chomp
		# fire class method
		current_commit = Commit.new(commit_name)
		current_commit.push
	end

	def repository
		puts "Choose repository name"
		repository_name = gets.chomp
		# fire class method
		current_repostory = Repository.rb
	end
end