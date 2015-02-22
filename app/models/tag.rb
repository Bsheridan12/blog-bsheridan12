class Tag < ActiveRecord::Base
  has_many :post_tags
  has_many :posts, through: :post_tags
  has_many :blogs, through: :posts
  has_many :authors, through: :blogs
end
