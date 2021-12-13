require 'tty-prompt'
require 'tty-progressbar'
require 'pastel'
require 'tty-box'
require 'colorize'

require_relative 'methods.rb'
# require_relative 'bmi.rb'

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

age = []
sex = []
height = []
weight = []

puts "Hi #{name}, there is some basic information we need before we start the calculator…".light_blue
puts "What is your age? (Don’t worry we won’t tell)"
age = gets.chomp
puts "What is your biological sex?"
sex = gets.chomp
puts "What is your height in cm?"
height = gets.chomp
puts "at is your current weight in kg?"
weight = gets.chomp
puts "Thanks for the information."
sleep (3)
clear
puts "Based on the information provided, we have calculated your BMI (Body Mass Index).".light_magenta
puts "Your current BMI is, #{}"
puts "This show us you are #{}"
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




