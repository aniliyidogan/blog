class CommentsController < ApplicationController

  def new
    @comment = Comment.new(comment_params)
  end

  def create
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    if @comment.save
      flash[:notice] = "Yorumunuz başarıyla kaydedildi. Onay beklemektedir.."
      redirect_to post_path(@post)
    else
      flash[:alert] = "Yorumunuz kaydedilemedi. Lütfen boş alanları dikkatli bir şekilde doldurunuz."
      redirect_to post_path(@post)
    end
  end

  private
  def comment_params
      params.require(:comment).permit(:name, :website, :body, :check)
  end
end
