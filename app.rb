require 'sinatra/base'
require_relative './lib/player'

class BattleApp < Sinatra::Base
  STARTING_HP = 100
  
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name

    erb :play
  end

  get '/attack-confirmation' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :suplex
  end

  run! if app_file == $0
end
