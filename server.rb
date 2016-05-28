require 'sinatra'

get '/hi' do
  erb :index
end

post '/create-habit' do
	"Your weight is #{params['weight']}"
end