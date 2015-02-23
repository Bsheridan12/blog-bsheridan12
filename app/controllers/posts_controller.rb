class PostsController < ApplicationController

  def current_user
    @_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def index
    @user = current_user
    @posts = Post.all
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @user = current_user
    @post = Post.new(post_params)

    # Jerry rigging this becuase I built the db poorly...
    @blog = Blog.first
    @post.blog = @blog

    @post.blog.author = @user

    if @post.save
      redirect_to "/posts"
    else
      render "new"
    end
  end

  def show
    @user = current_user

    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
