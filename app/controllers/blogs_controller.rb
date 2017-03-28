class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blogs_params)
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
