
class Dog
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    
    self.save
    
  end
  #class method because of self
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all = []
  end
  
  def self.print_all
    @@all.each do |dog_name|
      puts dog_name.name
    end
  end
  #instance method
  def save
   @@all << self
  end
  
    
end