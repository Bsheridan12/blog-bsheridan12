class User < ActiveRecord::Base
  has_many :blogs, foreign_key: :author_id
  has_many :posts, through: :blogs
  has_many :post_tags, through: :posts
  has_many :tags, through: :post_tags

  has_many :comments, foreign_key: :commenter_id
  has_many :commented_on_posts, through: :comments, source: :post

  has_secure_password

end
