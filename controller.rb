require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors.rb')

get '/welcome' do
  return "Welcome to the Rock Paper Scissors Webpage"
end


get '/RPS/:p1/:p2' do
  p1 = params['p1']
  p2 = params['p2']
  result = RockPaperScissors.run(p1, p2)
  return result
end
