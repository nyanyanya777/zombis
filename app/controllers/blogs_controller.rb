class BlogsController < ApplicationController
  before_action :authenticate_user!

  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blogs_params)
    redirect_to blogs_pat
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
