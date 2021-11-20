class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        # if view to be rendered is not specified, Rails will render articles/index.html.erb
    end
    def show
        @article = Article.find(params[:id])
    end
    # https://guides.rubyonrails.org/getting_started.html#creating-a-new-article
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article
        else
            render :new
        end
    end
    # https://guides.rubyonrails.org/getting_started.html#updating-an-article
    def edit
        @article = Article.find(params[:id])
    end
    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render :edit
        end
    end
    #https://guides.rubyonrails.org/getting_started.html#deleting-an-article
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to root_path
    end
    private
        # https://guides.rubyonrails.org/getting_started.html#using-strong-parameters
        def article_params
            params.require(:article).permit(:title, :body, :status)
        end
end
