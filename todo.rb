require 'sinatra'
require 'json'
require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)

class Todos < ActiveRecord::Base
end

# 登録済みTODOを全件取得
get '/todos' do
  todos = Todos.all.to_json
end

# 登録済みTODOの中から指定1件を取得
get '/todos/:id' do
  todo = Todos.new
  todo = Todos.find(params[:id]).to_json
end

# TODOを新規登録
post '/new' do
  todo = JSON.parse(request.body.read)

  new_todo = Todos.new(todo)
  new_todo.save
end
