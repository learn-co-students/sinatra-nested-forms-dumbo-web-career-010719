class Ship
	attr_accessor :name, :type, :booty
	@@all = []

<<<<<<< HEAD
	def initialize(args)
		@name = args[:name]
		@type = args[:type]
		@booty = args[:booty]
=======
	def initialize(ship_hash)
		@name = ship_hash[:name]
		@type = ship_hash[:type]
		@booty = ship_hash[:booty]
>>>>>>> 790b749c224fa9ede8b789d5b3d57854bb3910a4
		@@all << self
	end

	def self.all
		@@all
	end

	def self.clear
		@@all = []
	end
<<<<<<< HEAD
=======

>>>>>>> 790b749c224fa9ede8b789d5b3d57854bb3910a4
end