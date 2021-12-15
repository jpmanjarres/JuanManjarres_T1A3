# Basal Metabolic Rate is the number of calories required to keep your body functioning at rest.

# require_relative 'methods.rb'
# require_relative 'main.rb'
gender = ""
bmr_f = []
bmr_m = []

puts "sex"
gender = gets.chomp
puts "weight"
weight = gets.chomp.to_i
puts "height"
height = gets.chomp.to_i
puts "age"
age = gets.chomp.to_i

if gender == "female"
       puts "tu bmr is #{(10 * (weight.to_f ) + (6.25 * height.to_f) - ( 5* age.to_f) - 161).round}"


    end  
        #     if 
        # bmr_m = (10 * (weight.to_f ) + (6.25 * height.to_f) - ( 5* age.to_f) + 5).round
        # bmr_m.push
        # print bmr_m