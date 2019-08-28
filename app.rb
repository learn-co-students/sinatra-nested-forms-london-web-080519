require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end

    get '/new' do
      erb :'./pirates/new'
    end

    post '/pirates' do
      @pirate_name = params[:pirate][:name]
      @weight = params[:pirate][:weight]
      @height = params[:pirate][:height]
      @ship_name_1 = params[:pirate][:ships][0][:name]
      @type_1 = params[:pirate][:ships][0][:type]
      @booty_1 = params[:pirate][:ships][0][:booty]
      @ship_name_2 = params[:pirate][:ships][1][:name]
      @type_2 = params[:pirate][:ships][1][:type]
      @booty_2 = params[:pirate][:ships][1][:booty]
      erb :'./pirates/show'
    end

    post '/ships' do

    end
    # code other routes/actions here

  end
end
