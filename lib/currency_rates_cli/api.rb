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