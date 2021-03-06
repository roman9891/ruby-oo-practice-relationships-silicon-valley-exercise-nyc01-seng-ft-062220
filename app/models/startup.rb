class Startup
    attr_accessor :name
    attr_reader :founder, :domain
    
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        @domian = domain
        @name = name 
    end 

    def self.find_by_founder(founder)
        @@all.find do |startups| 
            startups.founder == founder
        end
    end  

    def self.domains
        @@all.map do |startup_object|
            startup_object.domain 
        end
    end

    def self.all
        @@all
    end

    def sign_contract(venture_capitalist, type, ammount)
        FundingRound.new(self, venture_capitalist, type, ammount)
    end

    def num_funding_rounds
       total_rounds = FundingRound.all.select do |funding|
            funding.startup == self
        end
        total_rounds.count
    end

    def total_funds
        FundingRound.all.sum do |funding_round_object|
            funding_round_object.investment
        end
    end

    def investors
        our_funding_rounds = FundingRound.all.select do |funding_round_object|
            funding_round_object.startup == self
        end
        our_funding_rounds.map do |each_fundinground_object|
            each_fundinground_object.venture_capitalist
        end
    end
end

dummy_s = Startup.new("Farzads", "Happyhour", "flatiron.com") 
