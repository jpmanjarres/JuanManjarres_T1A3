require_relative 'methods.rb'
require_relative 'main.rb'

def bmr
    if female do
        bmr = (10 * (weight.to_f ) + (6.25 * height.to_f) - ( 5* age.to_f) - 161)
    else
        bmr = (10 * (weight.to_f ) + (6.25 * height.to_f) - ( 5* age.to_f) - 5)
    end