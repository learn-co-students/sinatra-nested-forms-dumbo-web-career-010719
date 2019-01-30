class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def initialize
    @name
    @type
    @booty
    @@all << self
  end
  def self.all
    @@all
  end
  def self.clear
    @@all = []
  end
end

# Create two classes, a Pirate class and a Ship class.
# Pirates should have a name, weight, and height.
# You will also need a class method that returns
# all the pirates.
# The ship class should have name, type,
# and booty attributes, as well as
# a class method .all that returns all the
# ships and a class method .clear that deletes all ships.
