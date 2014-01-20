class BlogsController < ApplicationController

  http_basic_authenticate_with name: "cjj", password: "cjj", except: [:index, :show]

  def new
    @blog = Blog.new
  end

  def create
    #render text: params[:blog].inspect
    @blog = Blog.new(params[:blog].permit(:blog_title, :blog_text))
    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
  end

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(params[:blog].permit(:blog_title, :blog_text))
      redirect_to @blog
    else
      render 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path

  end

end
