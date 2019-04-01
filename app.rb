require 'sinatra'

get '/' do
  'hello!'
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end


get'/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
