require "tty-prompt"

e_weigh = ""
bwhen = ""

puts "How much do you want to weigh?"
e_weigh = gets.chomp.to_i
puts "By when (days)?"
bwhen = gets.chomp.to_i

$prompt = TTY::Prompt.new
#this method shows a menu and returns the selected option
def select_answer
    answer = $prompt.select("How much exercise do you do weekly?", ["No exercise at all", "Light (1-3 hrs)", "Moderate (3-4)", "Intense (4-6 hrs)", "Exit"])
    return answer
end
option = ""
while option != "Exit"
    #invokes the menu and stores the option in the variable
    option = select_answer
    #case statement to handle the options of the menu
    case option
        when "No exercise at all"
        when "Light (1-3 hrs)"
        when "Moderate (3-4)"
        when "Intense (4-6 hrs)" 

        else
            puts "See you next time..."
            next
    end
    print "Press Enter key to continue..."
    gets
end
