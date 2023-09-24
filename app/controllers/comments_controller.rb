class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @comment.article = @article
    if @comment.save
      redirect_to article_path(@article)
    else
      render "articles/show", status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @article = @comment.article
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :image_url)
  end
end
