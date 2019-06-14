require 'sinatra/base'
require_relative './lib/player'

class BattleApp < Sinatra::Base

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
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    erb :play
  end

  get '/attack-confirmation' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    $player_1.attack($player_2)
    erb :suplex
  end

  run! if app_file == $0
end
