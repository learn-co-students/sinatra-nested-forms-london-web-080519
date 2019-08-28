require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end


    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].map do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :"pirates/show"
      #redirect "pirates/#{@pirate.id}"
    end

    #each route should do one job - show route 
    #redirect to show and give show an ID

    # get 'pirate:id' do
    #   @pirate
    #   erb :"pirates/show"
    # end



  end
end
