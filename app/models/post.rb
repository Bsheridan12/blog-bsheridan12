class Post < ActiveRecord::Base
  belongs_to :blog

  has_many :post_tags
  has_many :tags, through: :post_tags

  has_many :comments
  has_many :commenters, class_name: "User"
end