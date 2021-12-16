require 'tty-prompt'
require 'colorize'

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
                                                                                                                                                                                                                                                                                         
    ".light_blue
end


def header(title)
    title.center(80, " ")
end

def centered(string)
    string.center(50, " ").rstrip
end

def clear
    puts "\e[2J\e[f"
end 

def calculate_bmi (weight, height) 
    return (weight / (height ** 2)).round
end

def bmi_result (bmi)
    if bmi >= 18 && bmi < 25
        return "normal_weight".green
        
    elsif bmi >= 25 && bmi < 30
        return "overweight".yellow

    elsif bmi > 30
        calculate_bmi = obesity
        return "obesity".red
    end
end

def calculate_bmr_f (weight, height, age)
    return (10 * (weight ) + (6.25 * height) - ( 5* age) - 161).round
end

def calculate_bmr_m (weight, height, age)
    return (10 * (weight.to_f ) + (6.25 * height.to_f) - ( 5* age.to_f) + 5).round    
end