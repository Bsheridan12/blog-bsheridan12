class User < ActiveRecord::Base
  has_many :blogs, foreign_key: :author_id
  has_many :posts, through: :blogs
  has_many :post_tags, through: :posts
  has_many :tags, through: :post_tags

  has_many :comments, foreign_key: :commenter_id
  has_many :commented_on_posts, through: :comments, source: :post



  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, password)
    @user = User.find_by(username: username)
    if @user && @user.password == password
      return @user
    end
  end

end
