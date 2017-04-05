class BlogsController < ApplicationController
  before_action :authenticate_user!

  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blogs_params)
    @blog.user_id = current_user.id
    @blog.save
    redirect_to blogs_path
  end

  def edit
  end

  def destroy
  end

  private
  def blogs_params
    params.require(:blog).permit(:content, :image)
  end

  end
