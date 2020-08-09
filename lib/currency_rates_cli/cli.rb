class CLI

    def run
        API.get_data
        puts " "
        puts "Welcome to the Currency Rates CLI!"
        main_menu
    end

    def main_menu
        input = " "
        while input != "exit"
            puts " "
            puts "This program will deliver the current currency rate for the country of your choice!"
            puts "All currency conversion rates are based on 1 U.S. Dollar."
            puts " "
            puts "To see the list of countries, type 'enter'."
            puts "To quit this program, type 'exit'."
            puts " "
            
            input = gets.strip.downcase
    
            case input
                when "enter"
                    enter
                when "exit" 
                    exit
                puts "Thank you for using the Currency Rates CLI! Goodbye!"
                else
                    invalid_entry 
            end    
        end
            
    end
    
    def enter
        puts " "
        puts "To see a country's currency rate, please type in the country's corresponding number."
        puts "(i.e. Type '8' to see Canada's (CAD) currency rate.)"
        puts " "

        Currency_Rates.all.each.with_index(1) do |conversion_rate, index|   
            puts "#{index}. #{conversion_rate.name}" 
        end

        puts " "
        puts "To see a country's currency rate, please type in the country's corresponding number."
        puts "(i.e. Type '8' to see Canada's (CAD) currency rate.)"
        puts " "

        input = gets.strip.to_i

        #seperate this method
        if input >= 1 && input <= Currency_Rates.all.length
            conversion_rate = Currency_Rates.all[input-1]
            puts "#{conversion_rate.name} = #{conversion_rate.rate}"
            exit?
        else
            invalid_entry 
            enter
        end

    end
    
    def exit?
        puts " "
        puts "Would you like to exit or continue?"
        puts "Type 'exit' or 'continue'."
        puts " "
        input = gets.chomp.downcase

        if input == "exit"
            puts " "
            puts "Thank you for using the Currency Rates CLI! Goodbye!"
            exit
        elsif input == "continue"
            enter
        else
            invalid_entry
            exit?
        end

    end

    def invalid_entry
        puts ""
        puts "Invalid! Please try again." 
    end


end