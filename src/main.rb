require 'tty-prompt'
require 'colorize'
require 'terminal-table'
require 'pastel'
require 'tty-progressbar'
require 'tty-box'
require_relative 'methods.rb'


clear


puts "Welcome"
if  (ARGV.length == 0) 
    puts "What is your name?"
    name = gets.chomp
else 
    name = ARGV[0]
    ARGV.clear
end

clear

puts "#{banner}"
puts "\n"    
puts "Healthy you".green + " is the ultimate nutrition calculator that can guide you through your journey, whether it is losing weight, building muscle"
puts "or improving your health, we are here to help you achieve your goal."
puts "\n"   
prompt = TTY::Prompt.new
prompt.keypress(centered("Press enter to continue").light_black,)
clear

puts "#{banner}".green
puts "\n"  
puts "Hi #{name}, there is some basic information we need before we start the calculator…".light_blue
puts "\n" 

# >=18<120
puts "What is your age? (Don’t worry we won’t tell)"
age = chomp_int

until age >= 18 && age <= 99
    puts "please enter a valid whole age between 18 & 99"
    age = chomp_int
end
# male/female
puts "What is your biological sex? (m/f)"
sex = gets.chomp
until sex == "f" || sex =="m"
    puts "Please enter either m or f"
    sex = gets.chomp
end

# valid height is >=60<300
puts "What is your height in cms"
height = chomp_int
until height >= 60 && height <= 300
    puts "please enter a valid height in cm betwen 60 & 300"
    height = chomp_int 
end
# Valid weight is 23-227 kg
puts "What is your current weight in kg?"
weight = chomp_int
until weight  >= 27 && weight  <= 227
    puts "please enter a valid height between 23 & 227"
    weight  = chomp_int
end

puts "Thanks for the information."

pastel = Pastel.new
green  = pastel.on_green(" ")
red    = pastel.on_red(" ")

bar = TTY::ProgressBar.new("|:bar|",
    total: 30,
    complete: green,
    incomplete: red,
    hide_cursor: true
)

30.times do
    sleep(0.1)
    bar.advance
  end

clear
puts "#{banner}".yellow
puts "\n"  


# puts weight, height
bmi_res = calculate_bmi(weight, height) 

box = TTY::Box.warn("Based on the information provided, we have calculated your BMI (Body Mass Index),
Your Body Mass Index is, #{bmi_res}. This is considered #{bmi_result(bmi_res)}")
print box
puts "\n" 

prompt = TTY::Prompt.new
prompt.keypress(centered("Press enter to continue").light_black)
clear

puts "#{banner}".white

options = {
    "Lose weight" => "50% Carbs, 15% Fats, 35% Protein",
    "Build Muscle" => "30% Carbs, 30% Fats, 40% Protein",
    "Improve health" => "55% Carbs, 30% Fats, 15% Protein",
    "Exit" => nil,
}

$prompt = TTY::Prompt.new


#invokes the menu and stores the option in the variable
option = $prompt.select("What is your goal?", options.keys)
macro = options[option]

if macro == nil
    puts "thanks for using this calculator"
    exit(0)
end

activity_levels = {
    "Sedentary" => 1.2,
    "Lightly active(1-3 hrs)"=> 1.375,
    "Moderately active(3-4)" => 1.55,
    "Very active (4-6 hrs)" => 1.725,
    "Extra active" => 1.9,
    "Exit" => nil,
}
activity_level = $prompt.select("Activity level", activity_levels.keys)
activity_level_multiplier = activity_levels[activity_level]

if activity_level_multiplier == nil
    puts "thanks for using this calculator"
    exit(0)
end

puts "How many kilos do you need/want to lose?"
k_to_l = chomp_int
until k_to_l > 0 && k_to_l < weight
    puts "Please enter a whole number greater than 0 and less than your weight of #{weight}"
    k_to_l = chomp_int
end

puts "in how many days"
by_when = chomp_int
##can't lose more than a kilo a day
until by_when >= k_to_l 
    puts "entere a number grater than number of kilos you want to lose"
    by_when = chomp_int
end

bmr = calc_bmr(sex == 'm', weight, height, age)
cal_per_day = final_cal_intk(k_to_l, by_when, bmr)

clear
puts "#{banner}".white
### Sumary Table #####
rows = []
rows << ['Age', age]
rows << ['Current Weight', weight]
rows << ['Target weight', weight - k_to_l]
rows << ['Number of days', by_when]
rows << ['Macro Percentages', macro]

table = Terminal::Table.new :title => "BRIEF SUMMARY".light_magenta, :headings => [], :rows => rows
puts table
puts "\n" 
puts "(c) = Carbs"
puts "(p) = Protein"
puts "(f) = Fats"
puts "\n" 
box = TTY::Box.info(
"To maintain your current weight requires about #{bmr}. Calories per day.
To reach your goal of #{k_to_l} kg in #{by_when} days at your current body weight and activity level, requires about: #{cal_per_day} Calories per day ")
print box
puts "\n" 
puts "Thanks for using this Calculator"
puts "\n" 
puts "                                       Copyright © 2020 | created by Juan Manjarres "
puts "\n" 