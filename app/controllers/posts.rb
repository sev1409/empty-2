# require_relative "../models/post.rb"

# class PostsController

#   # def initialize
#   #   @view = PostsView.new
#   # end

#   def index
#     @posts = Post.all
#     @database = Database.new
#     # @view.list_posts(posts)
#   end

#   def create
#     @post = Post.new(title: title, content: content, photo: photo, rating: rating)
#     @post.save
#   end

#   # def update
#   #   @post = Post.find(params[:id])
#   #   @post.update(post_params)
#   #   @post.save
#   # end

#   def destroy
#     index
#     post = Post.find(id)
#     post.destroy
#   end

#   # def upvote
#   #   index
#   #   id = @view.ask_for_input("id").to_i
#   #   post = Post.find(id)
#   #   post.votes += 1
#   #   post.save
#   # end
# end
