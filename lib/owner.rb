require 'pry'

class Owner

  @@all_owners = []

  attr_reader :name, :species
  

  def initialize(name)
    @name = name
    @species = "human"
    @@all_owners << self
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


end