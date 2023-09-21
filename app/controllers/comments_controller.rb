class CommentsController < ApplicationController
  before_action :set_article
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
    @comment = Comment.new
  end
  def show
    @article = Article.find(params[:article_id])
    @comments = @article.comments
    @comment = Comment.new
  end
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @article, notice: 'Comentario creado exitosamente.'
    else
      render 'articles/show'
    end
  end


  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to @article, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to @article, notice: 'Comment was successfully destroyed.'
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:name, :description, :user, :article_id)
  end

end
