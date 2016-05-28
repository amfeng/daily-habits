require 'sinatra'
require 'sinatra/activerecord'

set :database, {adapter: 'sqlite3', database: 'daily-habits.sqlite3'}

class Habit < ActiveRecord::Base
end

class HabitLog < ActiveRecord::Base
end

get '/hi' do
  erb :index
end

post '/create-habit' do
	"Your weight is #{params['weight']}"
end
