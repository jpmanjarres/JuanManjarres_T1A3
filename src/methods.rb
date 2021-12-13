require 'tty-prompt'
require 'colorize'
def header(title)
    title.center(80, " ")
end

def centered(string)
    string.center(50, " ").rstrip
end

def clear
    puts "\e[2J\e[f"
end 
