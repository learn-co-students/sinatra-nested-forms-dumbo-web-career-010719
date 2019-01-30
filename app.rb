require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # {"pirate"=>{"name"=>"pn", "weight"=>"pw", "height"=>"ph", "ships"=>[{"name"=>"sn1", "type"=>"st1", "booty"=>"sb1"}, {"name"=>"sn2", "type"=>"st2", "booty"=>"sb2"}]}}
      @p = params
      
      erb :'/pirates/show'
    end
    #
  end
end
