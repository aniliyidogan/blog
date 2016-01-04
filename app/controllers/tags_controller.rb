class TagsController < ApplicationController
  before_action :set_tag, only: [:show]

  def show
    @posts = @tag.posts.order("posts.created_at desc").page params[:page]
  end

  private
  def set_tag
    @tag = Tag.friendly.find(params[:id])
  end
end
