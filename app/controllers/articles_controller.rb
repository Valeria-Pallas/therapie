class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comments = @article.comments
  end


  def new
    @article = Article.new
  end

  def create
    @article = Article.new(Article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :banner_url)
  end
end
