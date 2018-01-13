require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"
require "sinatra/activerecord"
# require 'sinatra/activerecord/rake'
# require "environments"

require_relative "app/models/post.rb"
require_relative "app/controllers/posts.rb"
require_relative "config/application"


set :views, ("app/views")

get "/" do
  @database = DB.to_json
  erb :index
end

get '/new' do
  erb :new
end

# post '/posts' do
#   @post        = Post.new
#   @post.title   = params[:title]
#   @post.content    = params[:content]
#   @post.rating    = params[:rating]
#   @post.save

#   if @post.save
#     redirect to('/')
#   else
#     erb :new
#   end
# end

