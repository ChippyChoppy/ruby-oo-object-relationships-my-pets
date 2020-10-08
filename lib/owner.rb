class Owner
  # code goes here
  attr_reader :name, :species
  @@all = []

  def initialize(name=nil)
    @name = name
    @species = "human"
    @@all << self
  #  @cats = []
  #  @dogs = []
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
      #@@all.count == 0 this doesn't work as it wants to!
  end

  def cats
  #  @cats << cat
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
      Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
  end 


end