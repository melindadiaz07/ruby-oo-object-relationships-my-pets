class Dog
  
@@all_dogs = []

attr_reader :name
attr_accessor :owner, :mood

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all_dogs << self
    owner.dogs << self
  end

def self.all
  @@all_dogs

end




end