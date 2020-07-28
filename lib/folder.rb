class Folder

	def create_folder
		Dir.mkdir("lib")
		Dir.mkdir("db")
	end

	def create_file
		File.write("app.rb", "require 'pry'\nrequire 'bundler'\n$:.unshift File.expand_path(\"./../lib\", __FILE__)\nrequire 'controller'", mode: "w")
		File.write("Gemfile", "source 'https://rubygems.org'\nruby '2.5.1'\ngem 'pry'\ngem 'bundler'", mode: "w")
		File.write("README.md","Ruby program in alpha stage.", mode: "w")
		File.write("lib/controller.rb","class Controller\n\nend", mode: "w")
	end

	def execute_program
	    system("bundle install")
	    system("git init")
	end
end




