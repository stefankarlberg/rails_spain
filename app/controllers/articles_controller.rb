class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :content))
    flash[:notice] = "Article was successfully created"
    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    permitted_columns = params.require(:article).permit(:title, :description)
    @article.update_attributes(permitted_columns)

    redirect_to articles_path
  end
  

end
