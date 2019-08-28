class Pirate
    ALL = []

    attr_reader :name, :weight, :height

    def initialize(args)
        @name = args[:name]
        @weight = args[:weight]
        @height = args[:height]
        ALL << self
      
    end

    def self.all
        ALL
    end


end