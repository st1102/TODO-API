require 'sinatra'
require 'json'
require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)

class Todo_lists < ActiveRecord::Base
end

get '/show' do
  content_type :json, :charset => 'utf-8'
  todolist = Todo_lists.all
  todolist.to_json(:root => false)
end

post '/new' do
  todolists = JSON.parse(request.body.read.to_s)
  title = todolists['title']
  deadline = todolists['deadline']

  todolists = Todo_lists.new
  todolists.title = title
  todolists.deadline = deadline
  todolists.save
end
