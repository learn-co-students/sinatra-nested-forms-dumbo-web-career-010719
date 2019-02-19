require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
<<<<<<< HEAD
    get '/' do
=======
    get '/' do 
>>>>>>> 790b749c224fa9ede8b789d5b3d57854bb3910a4
    	erb :root
    end

    get '/new' do
    	erb :'pirates/new'
    end

<<<<<<< HEAD
    # post '/pirates' do
    # 	puts params
    # 	@pirate1 = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
    # 	@ship1 = Ship.new(name: pirate[ships][0][name], type:pirate[ships][0][type], booty:pirate[ships][0][booty])
    # 	@ship2 = Ship.new(name: pirate[ships][1][name], type:pirate[ships][1][type], booty:pirate[ships][1][booty])
    # 	erb :'pirates/show'
    # end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end

=======
    post '/pirates' do
    	@pirate = Pirate.new(params[:pirate])
    	params[:pirate][:ships].each do |ship_hash|
    		Ship.new(ship_hash)
    	end
    	# binding.pry

    	erb :'pirates/show'
    end
>>>>>>> 790b749c224fa9ede8b789d5b3d57854bb3910a4

  end
end
