require 'tty-prompt'
require 'tty-box'
require 'colorize'

require_relative 'methods.rb'
# require_relative'assessment.rb'

clear
name = (ARGV.length > 0) && ARGV
puts "What is your name?"
name = gets.chomp
clear

puts "#{banner}"
puts "\n"    
puts ("Healthy you".green + " is the ultimate nutrition calculator that can guide you through your journey, whether it is losing weight, building muscle or improving your health,")
puts"we are here to help you achieve your goal."
puts "\n"   
prompt = TTY::Prompt.new
prompt.keypress(centered("Press enter to continue").light_black,)
clear

# >=18<120
age = [] 
# male/female
sex = []
# valid height is >=60<300
height = [] 
# Valid weight is 23-227 kg
weight = []
e_weigh = []
bwhen = []


puts "Hi #{name}, there is some basic information we need before we start the calculator…".light_blue
puts "\n" 
puts "What is your age? (Don’t worry we won’t tell)"
age = gets.chomp.to_i
puts "What is your biological sex?"
sex = gets.chomp
puts "What is your height in mts?"
height = gets.chomp.to_f
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
            answer = select_answer
        when "Build Muscle"
            answer = select_answer
        when "Improve health"
            answer = select_answer
           
        else
            puts "See you next time..."
            next
    end
    print "Press Enter key to continue..."
    gets
    system "clear"

end

#### second part ####

require "tty-prompt"

e_weigh = []
bwhen = []

puts "what is your desired weight??"
e_weigh = gets.chomp.to_i
puts "By when (days)?"
bwhen = gets.chomp.to_i

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

    # brief ummaryy 
    # age #{age}
    # current weight #{weight}
    # macro ercentages 

    # puts "To maintain your current weight requires about #{} Calories per day."
    # puts "To reach your goal of #{e_weigh} kg in #{bwhen} days at your current body weight and activity level, requires about: #{calories}"






end
