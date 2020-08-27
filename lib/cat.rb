class Cat
  
  @@all_cats = []

  attr_reader :name
  attr_accessor :owner, :mood

  def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    @@all_cats << self
  end

  def self.all
    @@all_cats
  end

end