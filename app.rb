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

post '/create' do
  post_title = params['title']
  post_content = params['content']
  post_photo = params['photo']
  post_rating = params['rating']

  Post.create!(
    title: post_title,
    content: post_content,
    photo: post_photo,
    rating: post_rating
  )

  redirect to('/')
end
