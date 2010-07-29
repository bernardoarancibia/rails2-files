class CommentsController < ApplicationController
  before_filter :find_post, :only => [:create, :destroy]

  # Rails 3
  #before_filter do 
  #  @post = Post.find_by_id(params[:post_id])
  #end

  def create
    # Validar, enviar mensaje!!
    #@post = Post.find_by_id(params[:post_id])
    @post.comments.create(params[:comment])
    redirect_to @post, :notice => "Comment was perfectly done"
  end

  def destroy 
    #@post = Post.find_by_id(params[:post_id])
    comment = Comment.find_by_id(params[:id])
    comment.destroy
    redirect_to @post, :notice => "Comment was perfectly destroyed"
  end

  protected #-----------------------

  def find_post
    @post = Post.find_by_id(params[:post_id])
  end
end
