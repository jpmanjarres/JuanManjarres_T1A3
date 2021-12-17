require 'tty-prompt'
require 'colorize'
require 'terminal-table'
require_relative 'methods.rb'


clear


puts "Welcome"
if  (ARGV.length == 0) 
    puts "What is your name?"
    name = gets.chomp
else 
    name = ARGV[0]
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
sleep (3)
clear

puts "Based on the information provided, we have calculated your BMI (Body Mass Index).".light_magenta

# puts weight, height

bmi_res = calculate_bmi(weight, height) 
puts bmi_res


puts "Your Body Mass Index is, #{bmi_res}. This is considered #{bmi_result(bmi_res)}"
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
#this method shows a menu and returns the selected option
def select_option (options_to_print)
    answer = $prompt.select("What is your goal?", options_to_print)
    return answer
end

#invokes the menu and stores the option in the variable
option = select_option(options.keys)
macro = options[option]

# no idea why 
if macro == nil
    puts "thanks for playing"
    exit(0)
end


print "Press Enter key to continue..."
gets
    system "clear"



#### second part ####

k_to_l= []
by_when = []

def new_data
puts "how many kilos do you need/want to lose?"
k_to_l = gets.chomp.to_i
puts "By when (days)?"
by_when = gets.chomp.to_i
end

$prompt = TTY::Prompt.new
#this method shows a menu and returns the selected option
def select_answer
    answer = $prompt.select("Activity level", ["Sedentary", "Lightly active(1-3 hrs)", "Moderately active(3-4)", "Very active (4-6 hrs)", "Extra active","Exit"])
    return answer
end
option = ""
while option != "Exit"
    #invokes the menu and stores the option in the variable
    option = select_answer
    #case statement to handle the options of the menu
    case option
        when "Sedentary" 
            # return bmr * 1.2
        when "Lightly active(1-3 hrs)"
            # return bmr * 1.375
        when "Moderate (3-4)"
            # return bmr * 1.55
        when "Very active (4-6 hrs)"
            # return bmr * 1.725
        when "Extra active"
            # return bmr * 1.9
        else
            puts "See you next time..."
            next
    end
    print "Press Enter key to continue..."
    gets

    # select_answer \
#### Sumary Table #####
# rows = []
# rows << ['Age', 31]
# rows << ['Current Weight', 64]
# rows << ['Macro Percentages', "30(c), 40(p), 30(f)"]

# table = Terminal::Table.new :title => "BRIEF SUMMARY", :headings => [], :rows => rows
# puts table
# puts "\n" 
# puts "(c) = Carbs"
# puts "(p) = Protein"
# puts "(f) = Fats"
# puts "\n" 
# puts "To maintain your current weight requires about (#{bmr}). Calories per day."
# puts "To reach your goal of #{k_to_l} kg in #{by_when} days at your current body weight and activity level, requires about: Calories per day "
end