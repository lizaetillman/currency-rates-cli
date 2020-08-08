class Currency_Rates

    attr_accessor :name, :rate 
    @@all = []

    def initialize(name, rate)
        @name = name
        @rate = rate
        @@all << self
    end 

    def self.all
        @@all
    end 

end