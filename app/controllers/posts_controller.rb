class PostsController < ApplicationController
  before_action :set_post, only: [:show]
  before_action :set_hello, only:[:index, :show]

  def index
    @color = "#123456"
    @tags = Tag.all
    @posts = Post.all.order("created_at desc").page params[:page]
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end

  def show
    @comments = @post.comments
    @tags = @post.tags
  end

  private
  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def set_hello
    @hellos = Hello.limit(1).order("RANDOM()")
  end
end
