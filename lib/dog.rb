class Dog
    attr_accessor :name, :save

   

    def initialize(name)
        @name = name
        @@all ||= []
        save
        # @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
       @@all.each do |dog|
        puts dog.name
       end
    end

    def save
        @@all << self
    end
end