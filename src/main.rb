require 'tty-prompt'
require 'tty-box'
require 'colorize'

require_relative 'methods.rb'
# require_relative'assessment.rb'
require_relative 'bmi.rb'
clear
name = (ARGV.length > 0) && ARGV
puts "What is your name?"
name = gets.chomp
clear

print  "
█████   █████ ██████████   █████████   █████       ███████████ █████   █████ █████ █████             █████ █████    ███████    █████  █████
░░███   ░░███ ░░███░░░░░█  ███░░░░░███ ░░███       ░█░░░███░░░█░░███   ░░███ ░░███ ░░███             ░░███ ░░███   ███░░░░░███ ░░███  ░░███ 
 ░███    ░███  ░███  █ ░  ░███    ░███  ░███       ░   ░███  ░  ░███    ░███  ░░███ ███               ░░███ ███   ███     ░░███ ░███   ░███ 
 ░███████████  ░██████    ░███████████  ░███           ░███     ░███████████   ░░█████                 ░░█████   ░███      ░███ ░███   ░███ 
 ░███░░░░░███  ░███░░█    ░███░░░░░███  ░███           ░███     ░███░░░░░███    ░░███                   ░░███    ░███      ░███ ░███   ░███ 
 ░███    ░███  ░███ ░   █ ░███    ░███  ░███      █    ░███     ░███    ░███     ░███                    ░███    ░░███     ███  ░███   ░███ 
 █████   █████ ██████████ █████   █████ ███████████    █████    █████   █████    █████                   █████    ░░░███████░   ░░████████  
░░░░░   ░░░░░ ░░░░░░░░░░ ░░░░░   ░░░░░ ░░░░░░░░░░░    ░░░░░    ░░░░░   ░░░░░    ░░░░░                   ░░░░░       ░░░░░░░      ░░░░░░░░   
                                                                                                                                                                                                                                                                                     
".light_blue

puts "\n"    
puts ("Healthy you".green + " is the ultimate nutrition calculator that can guide you through your journey, whether it is losing weight, building muscle or improving your health,")
puts"we are here to help you achieve your goal."
puts "\n"   
prompt = TTY::Prompt.new
prompt.keypress(centered("Press enter to continue").light_black, keys: [:return])
clear

# >=18<120
age = [] 
# male/female
sex = []
# valid height is >=60<300
height = [] 
# Valid weight is 23-227 kg
weight = []
bmi = ""
bmr_f = ""
bmr_m = ""
bmi = []

puts "Hi #{name}, there is some basic information we need before we start the calculator…".light_blue
puts "\n" 
puts "What is your age? (Don’t worry we won’t tell)"
age = gets.chomp.to_i
puts "What is your biological sex?"
sex = gets.chomp
puts "What is your height in mts?"
height = gets.chomp.to_i
puts "What is your current weight in kg?"
weight = gets.chomp.to_i
puts "Thanks for the information."
sleep (3)
clear

puts "Based on the information provided, we have calculated your BMI (Body Mass Index).".light_magenta
puts "Your Body Mass Index is, #{$bmi}. This is considered #{}"
puts "\n" 
prompt = TTY::Prompt.new
prompt.keypress(centered("Press enter to continue").light_black)
clear

print  "
█████   █████ ██████████   █████████   █████       ███████████ █████   █████ █████ █████             █████ █████    ███████    █████  █████
░░███   ░░███ ░░███░░░░░█  ███░░░░░███ ░░███       ░█░░░███░░░█░░███   ░░███ ░░███ ░░███             ░░███ ░░███   ███░░░░░███ ░░███  ░░███ 
 ░███    ░███  ░███  █ ░  ░███    ░███  ░███       ░   ░███  ░  ░███    ░███  ░░███ ███               ░░███ ███   ███     ░░███ ░███   ░███ 
 ░███████████  ░██████    ░███████████  ░███           ░███     ░███████████   ░░█████                 ░░█████   ░███      ░███ ░███   ░███ 
 ░███░░░░░███  ░███░░█    ░███░░░░░███  ░███           ░███     ░███░░░░░███    ░░███                   ░░███    ░███      ░███ ░███   ░███ 
 ░███    ░███  ░███ ░   █ ░███    ░███  ░███      █    ░███     ░███    ░███     ░███                    ░███    ░░███     ███  ░███   ░███ 
 █████   █████ ██████████ █████   █████ ███████████    █████    █████   █████    █████                   █████    ░░░███████░   ░░████████  
░░░░░   ░░░░░ ░░░░░░░░░░ ░░░░░   ░░░░░ ░░░░░░░░░░░    ░░░░░    ░░░░░   ░░░░░    ░░░░░                   ░░░░░       ░░░░░░░      ░░░░░░░░   
                                                                                                                                                                                                                                                                                     
".white
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