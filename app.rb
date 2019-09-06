require 'sinatra/base'
require './lib/player'
require './lib/game'

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
    @game = $game
    erb :play
  end

  get '/attack_p1' do
    @victim = $game.p1_name
    @attacker = $game.p2_name
    @game = $game
    @game.attack($game.player1)

    erb:attack
  end

  get '/attack_p2' do
    @attacker = $game.p1_name
    @victim = $game.p2_name
    @game = $game
    @game.attack($game.player2)
    erb:attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
