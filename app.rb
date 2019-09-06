require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/'do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'

  end

  get '/play' do
    @player_1_name = $game.p1_name
    @player_2_name = $game.p2_name
    @player1_hp = $game.p1_hp
    @player2_hp = $game.p2_hp
    erb :play
  end

  get '/attack_p1' do
    @victim = $game.p1_name
    @attacker = $game.p2_name
    @player1 = $game.p1_name
    @player2 = $game.p2_name
    p $game.player1
    @player1_hp = $game.attack($game.player1)
    @player2_hp = $game.p2_hp
    erb:attack
  end

  get '/attack_p2' do
    @attacker = $game.p1_name
    @victim = $game.p2_name
    @player1 = $game.p1_name
    @player2 = $game.p2_name
    @player1_hp = $game.p1_hp
    @player2_hp = $game.attack($game.player2)
    erb:attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
