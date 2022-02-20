class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_article

    def create
        @comment = @article.comments.new(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_back(fallback_location: root_path)
    end

    def destroy
    end

    private

    def comment_params
        params.require(:comment).permit(:body,:article_id)
    end

    def set_article
        @article = Article.find(params[:article_id])
    end
end
