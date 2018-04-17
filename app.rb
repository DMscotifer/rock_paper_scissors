require("sinatra")
require("sinatra/contrib.rb") if development?
require("./models/rock_paper_scissors.rb")


get "/game/:player1/:player2" do
  @round = Game.decide_match(params[:player1], params[:player2])
  erb(:result)
end

