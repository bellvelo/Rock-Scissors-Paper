require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')

get "/game/:play1/:play2" do
  rsp = Game.new(params[:play1], params[:play2])
  @rspresult = rsp.winner
  erb(:result)
end

get "/rules" do
  erb(:rules)
end
