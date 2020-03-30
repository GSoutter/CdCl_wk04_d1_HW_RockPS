require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors.rb')
also_reload('./models/*')
also_reload('./views/*')
#also_reload('./public/css/style.css')


get '/' do

  erb(:welcome)
end


get '/RPS/:p1/:p2' do
  p1 = params['p1']
  p2 = params['p2']
  @result = RockPaperScissors.run(p1, p2)

  erb(:result)
end
