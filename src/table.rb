require 'terminal-table'
require 'colorize'
# require_relative 'methods.rb'
# require_relative 'bmr.rb'

bmr = 2062
e_weigh = 58
bwhen = 30



rows = []
rows << ['Age', 31]
rows << ['Current Weight', 64]
rows << ['Macro Percentages', "30(c), 40(p), 30(f)"]

table = Terminal::Table.new :title => "BRIEF SUMMARY", :headings => [], :rows => rows
puts table
puts "\n" 
puts "(c) = Carbs"
puts "(p) = Protein"
puts "(f) = Fats"
puts "\n" 
puts "To maintain your current weight requires about (#{bmr}). Calories per day."
puts "To reach your goal of #{e_weigh} kg in #{bwhen} days at your current body weight and activity level, requires about: 1540 Calories per day "

