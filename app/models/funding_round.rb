class FundingRound
  
    attr_reader :venture_capitalist, :startup
    attr_accessor :type, :investment 
    @@all = []

    def initialize(startup, venture_capitalist, type, investment) 
        @startup = startup 
        @venture_capitalist = venture_capitalist
        @type = type 
        @investment = investment 
        @@all << self
    end 
    
    def funding_round_startup
        self.startup
    end 

    def self.all
        @@all
    end

end
