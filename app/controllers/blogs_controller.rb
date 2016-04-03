class BlogsController < ApplicationController
  def index
    @blog_entries = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    parameters = params.require(:blog).permit(:title, :body)
    blog = Blog.new(parameters)
    blog.save
    redirect_to blogs_path
  end
end
