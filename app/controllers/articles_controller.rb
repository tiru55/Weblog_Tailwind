class ArticlesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.all

	end

	def show
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
			else
				render 'new'
			end
		elsif params[:commit] == 'Save as Draft'
			@article = Article.new(article_params)
			@article.user_id = current_user.id
			@article.status = 0
			if @article.save
				redirect_to @article
				flash[:notice] = "Your Article has been added to Drafts"
			else
				render 'new'
			end
		end
	end

	def edit
	end

	def update
		if @article.update(article_params)
			 flash[:notice] = "Article was updated successfully."
			 redirect_to @article
		else
			redirect_to 'edit'
		end

	end

	private

	def article_params
		params.require(:article).permit(:title,:content,:category,:tags,:visibility,:version_note)
	end


	def set_article
		@article = Article.find(params[:id])
	end
end
