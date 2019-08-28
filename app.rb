require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

  
    set :views, Proc.new { File.join(root, "/views")}
    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"/pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships].map{|ship|Ship.new(ship)}
      erb :"/pirates/show"
    end

  end
end
