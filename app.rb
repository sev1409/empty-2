require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"
require "sinatra/activerecord"
# require 'sinatra/activerecord/rake'

require_relative "app/models/post.rb"
require_relative "app/controllers/posts.rb"

# configure :development do
#   set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'your_database_name', pool: 2, username: 'your_username', password: 'your_password'}
# end

# configure :production do
#   set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'your_database_name', pool: 2, username: 'your_username', password: 'your_password'}
# end

get "/" do
  @database = DB.to_json
end

# get '/' do
#   'Hello world!'
# end
