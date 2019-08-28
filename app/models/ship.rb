class Ship
    @@all = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@all << self
    end

    attr_accessor :name, :type, :booty

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end