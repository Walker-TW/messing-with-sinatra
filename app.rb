require 'sinatra'

set :session_secret, "secret"

get '/sum/' do
  "Hello World"
end

get '/secret' do
  "Im a secret look at me Ben "
end

get '/random-cat' do
  @names = ["Amigo", "Oscar", "Viking","Tuxedo",'Flopsy-Mopsy-Cottentail'].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @names = params[:name]
  @addiction = params[:addiction]
  erb(:index)
end
