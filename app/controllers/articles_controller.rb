class ArticlesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_aticle,only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.all

	end

	def show
		@comment = Comment.new
		@comments = @article.comments.order("created_at DESC")
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
				ArticleMailer.with(user: current_user,article: @article).article_created.deliver_later
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
			 ArticleMailer.with(user: current_user,article: @article).article_updated.deliver_later
			 redirect_to @article
		else
			redirect_to 'edit'
		end

	end

	def destroy
		@article.destroy
		ArticleMailer.with(user: current_user,article: @article).article_destroyed.deliver_later
		redirect_to articles_path, :notice => "Your Article has been Deleted..!"	
	end

	private

	def article_params
		params.require(:article).permit(:title,:content,:category,:sub_category,:tags,:visibility,:version_note,:banner)
	end

	def set_aticle
		@article = Article.find(params[:id])
	end
end