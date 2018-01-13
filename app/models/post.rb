class Post < ActiveRecord::Base
#   attr_reader :id
#   attr_accessor :title, :content, :photo, :rating

#   def initialize(attributes = {})
#     @id = attributes[:id]
#     @title = attributes[:title]
#     @content = attributes[:content]
#     @photo = attributes[:photo]
#     @rating = attributes[:rating] || 0
#   end
# end

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, presence: true
end
