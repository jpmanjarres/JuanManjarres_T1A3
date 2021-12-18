require 'colorize'
require 'terminal-table'

def banner
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
end

def centered(string)
    string.center(50, " ").rstrip
end

def clear
    puts "\e[2J\e[f"
end 

def chomp_int 
    return (Integer gets.chomp rescue -1)
end

def calculate_bmi (weight, height) 
    height_float = height.to_f / 100
    weight_float = weight.to_f
    height_sq = height_float ** 2

    pre_round = weight_float / height_sq

    return pre_round.round
end

def bmi_result (bmi)
    if bmi < 18
        return "underweight".red
    
    elsif bmi >= 18 && bmi <= 25
        return "normal weight".green
        
    elsif bmi > 25 && bmi <= 30
        return "overweight".yellow

    else 
        return "obesity".red
    end
end

def calc_bmr(is_male, weight, height, age)
    modifier = is_male ? +5 : -161
    return (10 * (weight ) + (6.25 * height) - ( 5* age) + modifier) 
end


def final_cal_intk(k_to_l, by_when)
    return ((7700 * k_to_l )/ by_when)
end
