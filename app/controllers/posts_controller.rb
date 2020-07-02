class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new 
  end

  def create 

    @post = Post.create(title: params[:post][:title] , description: params[:post][:description])
    p @post
    redirect_to posts_path
  end
  
end
