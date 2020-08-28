require 'pry'

class Owner

  @@all_owners = []

  attr_reader :name, :species
  attr_accessor :mood, :owner
  
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.length
  end

  def self.reset_all
    @@all_owners = []
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
    dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end

  

  def sell_pets
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil 
      end 
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
      
    end
    
  end
 
  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end

end