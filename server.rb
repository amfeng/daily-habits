require 'sinatra'
require 'sinatra/activerecord'

set :database, {adapter: 'sqlite3', database: 'daily-habits.sqlite3'}

class Habit < ActiveRecord::Base
end

class HabitLog < ActiveRecord::Base
end

get '/' do
  erb :index
end

post '/create-habit' do
	HabitLog.create(habit: 'weight', value: params['weight'])
  'created'
end
