weight = 64
height = 161
age = 31

bmr = ((10 * (weight ) + (6.25 * height) - ( 5* age) - 161) * 1.55).round
cal_d = (bmr - ((7700 * 6)/30))
new_bmr = (bmr-cal_d)
puts cal_d
puts bmr 
puts new_bmr