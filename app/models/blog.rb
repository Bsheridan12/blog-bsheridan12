class Blog < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  
  has_many :posts
  has_many :post_tags, through: :posts
  has_many :tags, through: :post_tags
end
