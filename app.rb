require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'./pirates/new'
    end

    post '/pirates' do
      @pirate_name = params[:pirate][:name]
      @pirate_weight = params[:pirate][:weight]
      @pirate_height = params[:pirate][:height]
      @ship_name_1 = params[:pirate][:ships][0][:name]
      @ship_type_1 = params[:pirate][:ships][0][:type]
      @ship_booty_1 = params[:pirate][:ships][0][:booty]
      @ship_name_2 = params[:pirate][:ships][1][:name]
      @ship_type_2 = params[:pirate][:ships][1][:type]
      @ship_booty_2 = params[:pirate][:ships][1][:booty]
      # params.to_s
      erb :'./pirates/show'
    end

  end
end
