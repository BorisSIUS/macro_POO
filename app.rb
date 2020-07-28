require 'csv'
require 'pry'
require 'open-uri'
require 'bundler'
require 'watir'
require 'selenium'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)
require 'menu'#add path to enfants file
require 'commit'
require 'folder'

Menu.new.main
#to do more
	#ARGV
	#more option
	#change git user name / password
	#utilizer le watir.exist?



