require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/'do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new
    redirect '/play'

  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player1_hp = $player_1.hp
    @player2_hp = $player_2.hp
    erb :play
  end

  get '/attack_p1' do
    @victim = $player_1.name
    @attacker = $player_2.name
    @player1 = $player_1.name
    @player2 = $player_2.name
    @player1_hp = $game.attack($player_1)
    @player2_hp = $player_2.hp
    erb:attack
  end

  get '/attack_p2' do
    @attacker = $player_1.name
    @victim = $player_2.name
    @player1 = $player_1.name
    @player2 = $player_2.name
    @player1_hp = $player_1.hp
    @player2_hp = $game.attack($player_2)
    erb:attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
