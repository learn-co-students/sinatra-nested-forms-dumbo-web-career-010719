class Pirate
	attr_accessor :name, :weight, :height
	@@all = []

<<<<<<< HEAD
	def initialize(args)
	  @name = args[:name]
	  @weight = args[:weight]
	  @height = args[:height]
	  @@all << self
=======
	def initialize(params)
		@name = params[:name]
		@weight = params[:weight]
		@height = params[:height]
		@@all << self
>>>>>>> 790b749c224fa9ede8b789d5b3d57854bb3910a4
	end

	def self.all
		@@all
	end

<<<<<<< HEAD

=======
>>>>>>> 790b749c224fa9ede8b789d5b3d57854bb3910a4
end