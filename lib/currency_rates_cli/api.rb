class API

    #gem dotenv

    def self.get_data
        response = RestClient.get("https://v6.exchangerate-api.com/v6/ecb66f99836d97c7f758ea6e/latest/USD")
        convert = JSON.parse(response.body)
    
        convert["conversion_rates"].each do |currency_code, rate|
            Currency_Rates.new(currency_code, rate)
        end

    end
    
end




































    # class API

#     def self.get_data
#         response = RestClient.get("http://apilayer.net/api/live?access_key=be3e6d5302693285d74e426657326d0c&currencies=KWD,BHD,OMR,JOD,GBP,KYD,EUR,CHF,CAD&source=USD&format=1")
#         # currencies = JSON.parse(response.body)["quotes"]
#         # currencies.each do |currency|
#             Currency_Converter.new(currency)
#         # end
#     end

#     def return
#         currencies = JSON.parse(response.body)
#         currencies.collect do |currency| ["quotes"]
#         end
#     end

# end
