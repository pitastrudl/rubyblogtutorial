class ArticlesController < ApplicationController
  def new 
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect # render params in plain view 
    @article = Article.new(article_params) # contains params. 

    if @article.save 
      redirect_to @article
    else
      render 'new'
    end
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
  end
