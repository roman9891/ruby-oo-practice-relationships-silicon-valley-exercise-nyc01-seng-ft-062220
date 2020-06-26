class VentureCapitalist
    attr_accessor :total_worth, :name
    
    @@all = []
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@all.select do |venture_capitalist_object|
            venture_capitalist_object.total_worth > 1000000
        end
    end
end
