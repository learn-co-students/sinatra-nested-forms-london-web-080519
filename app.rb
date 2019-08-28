require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do

    erb :root

  end


  get '/new' do
    
      erb :"pirates/new"
  end

  post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

    
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      
      @ships = Ship.all
  
      erb :"pirates/show"
      # redirect "pirates/#{@pirate.id}"
    end

    # get 'pirates/:id' do
    #   @pirate_instance = Pirate.find(params[:id])
    # erb :"pirates/show"
  
    
    
  end


end
