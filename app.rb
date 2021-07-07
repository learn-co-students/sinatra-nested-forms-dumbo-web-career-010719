require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

#     post '/student' do
#   @student = Student.new(params[:student])
#
#   params[:student][:courses].each do |details|
#     Course.new(details)
#   end
#
#   @courses = Course.all
#
#   erb :student
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
