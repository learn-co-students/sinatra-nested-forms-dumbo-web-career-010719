require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
    	erb :root
    end

    get '/new' do
    	erb :'pirates/new'
    end

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


  end
end
