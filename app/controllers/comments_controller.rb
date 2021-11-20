# https://guides.rubyonrails.org/getting_started.html#generating-a-controller
class CommentsController < ApplicationController
    # https://guides.rubyonrails.org/getting_started.html#basic-authentication
    http_basic_authenticate_with name: "Aizaz", password: "secret", only: :destroy
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end
    # https://guides.rubyonrails.org/getting_started.html#deleting-comments
    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body, :status)
        end
end
