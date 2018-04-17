require "sinatra"
require "sinatra/contrib/all" if development?
also_reload("./models/*")
require_relative "./models/game.rb"

get "/" do
  erb(:welcome)  
end

get "/game/:player1/:player2" do
  @result = Game.decide_match(params[:player1], params[:player2])
  erb(:result)
end

