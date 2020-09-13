class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
     @article = Article.new
  end

  def show
   @article = Article.find(params[:id])
  end

   def create
    @article = Article.create(params.require(:article).permit(:title, :content))
    if @article.persisted?
      redirect_to root_path, notice: "Your article was successfully created"
    else
      redirect_to new_article_path, notice: "error"
    end
  end
end
