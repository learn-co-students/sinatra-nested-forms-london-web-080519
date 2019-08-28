class Pirate
    @@all = []

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        @@all << self
    end

    attr_accessor :name, :weight, :height

    def self.all
        @@all
    end
end