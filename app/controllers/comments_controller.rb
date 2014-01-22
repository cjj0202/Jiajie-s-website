class CommentsController < ApplicationController

  http_basic_authenticate_with name: "cjj", password: "cjj", except: [:create]

  def create
    @blog = Blog.find(params[:blog_id])

    @comment = @blog.comments.create(params[:comment])
    @comment.save
    redirect_to blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end
end
