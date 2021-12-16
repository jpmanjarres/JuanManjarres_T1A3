require 'tty-prompt'
require 'colorize'
require 'terminal-table'
require_relative 'methods.rb'


clear
name = (ARGV.length > 0) && ARGV
puts "Welcome"
puts "What is your name?"
name = gets.chomp
clear

puts "#{banner}"
puts "\n"    
puts "Healthy you".green + " is the ultimate nutrition calculator that can guide you through your journey, whether it is losing weight, building muscle"
puts "or improving your health, we are here to help you achieve your goal."
puts "\n"   
prompt = TTY::Prompt.new
prompt.keypress(centered("Press enter to continue").light_black,)
clear

age = [] 
sex = []
height = [] 
weight = []


puts "Hi #{name}, there is some basic information we need before we start the calculator…".light_blue
puts "\n" 
# >=18<120
puts "What is your age? (Don’t worry we won’t tell)"
age = gets.chomp
# male/female
puts "What is your biological sex?"
sex = gets.chomp
while sex == "female"
    
# valid height is >=60<300
puts "What is your height in cms"
height = gets.chomp.to_f
# Valid weight is 23-227 kg
puts "What is your current weight in kg?"
weight = gets.chomp.to_f
puts "Thanks for the information."
sleep (3)
clear

puts "Based on the information provided, we have calculated your BMI (Body Mass Index).".light_magenta

bmi_res= calculate_bmi(weight, height) 

puts "Your Body Mass Index is, #{bmi_res}. This is considered #{bmi_result(bmi_res)}"
puts "\n" 

prompt = TTY::Prompt.new
prompt.keypress(centered("Press enter to continue").light_black)
clear

puts "#{banner}".white
$prompt = TTY::Prompt.new
#this method shows a menu and returns the selected option
def select_option
    answer = $prompt.select("What is your goal?", ["Lose weight", "Build Muscle", "Improve health", "Exit"])
    return answer
end
option = ""
while option != "Exit"
    #invokes the menu and stores the option in the variable
    option = select_option
    #case statement to handle the options of the menu
    case option

        when "Lose weight"
                new_data
        when "Build Muscle"
            new_data
        when "Improve health"
            new_data
           
        else
            puts "See you next time..."
            next
    end
    print "Press Enter key to continue..."
    gets
    system "clear"

end

#### second part ####

k_to_l= []
by_when = []

puts "how many kilos do you need/want to lose?"
k_to_l = gets.chomp.to_i
puts "By when (days)?"
by_when = gets.chomp.to_i


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

        when "Lightly active(1-3 hrs)"

        when "Moderate (3-4)"
        when "Very active (4-6 hrs)"
        when "Extra active"

        else
            puts "See you next time..."
            next
    end
    print "Press Enter key to continue..."
    gets


#### Sumary Table #####
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
puts "To reach your goal of #{k_to_l} kg in #{by_when} days at your current body weight and activity level, requires about: 1540 Calories per day "
end
