require 'sinatra'
require 'json'
require 'active_record'
require 'mysql2'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:development)

class Todo_lists < ActiveRecord::Base
end

# 登録済みTODOを全件取得
get '/show' do
  todolist = Todo_lists.all.to_json
end

# 登録済みTODOの中から指定1件を取得
get '/show/:id' do
  todo = Todo_lists.find(params[:id])
  if todo
    todolist = Todo_lists.new
    todolist = todo.to_json
  else
    "ID:#{params[:id]}のTODOはありません。"
  end
end

# TODOを新規登録
post '/new' do
  todo = JSON.parse(request.body.read)

  todolist = Todo_lists.new(todo)
  todolist.save
end
