class ArticleController < ApplicationController
  def show
     @article=BlogArticle.find(params[:id])
  end
  
  def index
    @articles=BlogArticle.all
  end
end
