class Repository

	def initialize(name)
		@name = name
		@browser = Watir::Browser.new(:firefox)
		@username = File.read("db/user_name")
		@user_info = File.read("db/user_info", mode: "r").split
	end

	def login

		@browser.goto "github.com/new"

		user_field = @browser.element(:xpath,"//*[@id=login_field']")
		password_field = @browser.element(:xpath,"//*[@id='password']")
		sign_in = @browser.element(:xpath,"/html/body/div[3]/main/div/form/div[4]/input[9]")

		user.set(user_info[0])
		password.set(user_info[1])
		button.click
	end

	def create

		name_field = @browser.element(:xpath, "//*[@id='repository_name']")
		button = @browser.element(:xpath,"/html/body/div[4]/main/div/form/div[4]/button")

		name_field.set(@name)
		button.click
	end

	def remote
		remote_adress = "https://github.com/#{user_info[0]}/#{@name}.git"
		system("git remote add #{remote_adress}")
	end
end 
