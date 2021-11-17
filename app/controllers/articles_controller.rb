class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # if view to be rendered is not specified, Rails will render articles/index.html.erb
  end
  def show
    @article = Article.find(params[:id])
  end
end
