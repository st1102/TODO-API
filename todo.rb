require 'sinatra'
require 'json'
require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)

class Todo_lists < ActiveRecord::Base
end

get '/todolist' do
  content_type :json, :charset => 'utf-8'
  todolist = Todo_lists.order("created_at DESC").limit(10)
  todolist.to_json(:root => false)
end

post '/addtodo' do
  body = request.body.read

  if body == ''
    status 400
  else
    body.to_json
  end
end
