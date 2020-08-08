class CLI

    def run
        API.get_data
        puts "Welcome to the Currency Rates CLI!"
        main_menu
    end

    def main_menu
        input = " "
        while input != "exit"
            puts "This program will reveal the current currency rate at the selected country."
            puts "All currency conversion rates are based on 1 U.S. Dollar."
            puts " "
            puts "To get the conversion rate, type 'enter'."
            puts "To quit this program, type 'exit'."
            
            input = gets.strip.downcase
    
            case input
                when "enter"
                    enter
                when "exit" 
                    exit
                puts "Thank you for using the Currency Rates CLI! Goodbye!"
                else
                puts "Invaild! Please choose a valid input." 
            end    
        end
            
    end
    
    def enter
        puts "Select a country's currency to see its conversion rate."
        puts " "

        Currency_Rates.all.each.with_index(1) do |conversion_rate, index|   
            puts "#{index}. #{conversion_rate.name}" 
        end

        puts "Please enter the number of the of currency to exchange the rate."
        input = gets.strip.to_i

        #seperate this method
        if input >= 1 && input <= Currency_Rates.all.length
            conversion_rate = Currency_Rates.all[input-1]
            puts "#{conversion_rate.name} = #{conversion_rate.rate}"
            exit?
        else
            puts "Invaild! Please choose a valid number." 
            enter
        end

    end
    
    def exit?
        puts "Would you like to exit or continue? Type 'exit' or 'continue'."
        input = gets.chomp.downcase

        if input == "exit"
            puts "Thank you for using the Currency Rates CLI! Goodbye!"
            exit
        elsif input == "continue"
            enter
        else
            puts "Invaild! Please choose a valid currency code."
            exit?
        end

    end


end