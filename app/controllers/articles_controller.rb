class ArticlesController < ApplicationController
	before_action :authenticate_user!

	def index
		@articles = Article.all

	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		if params[:commit] == 'Publish'
			@article = Article.new(article_params)
			@article.user_id = current_user.id
			@article.status = 1
			if @article.save
				redirect_to @article
				flash[:notice] = "Your Article has been Published"
			end
		elsif params[:commit] == 'Save as Draft'
			@article = Article.new(article_params)
			@article.user_id = current_user.id
			@article.status = 0
			if @article.save
				redirect_to @article
				flash[:notice] = "Your Article has been added to Drafts"
			end
		end
	end

	private

	def article_params
		params.require(:article).permit(:title,:content,:category,:tags)
	end

end
