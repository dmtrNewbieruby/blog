class ArticlesController < ApplicationController

	before_action :get_article, only: [:show, :destroy, :edit, :update]
	def index
		@articles = Article.all
	end
	def show
	end
	def destroy
		@article.destroy
		redirect_to @article
	end

	def new 
		@article = Article.new

	end

	def edit
		
	end

	def create
		@article = Article.new(article_safe_params)
		if @article.save
			redirect_to @article 
		else
			render 'new'
		end
	end

	def update

    if @article.update(article_safe_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  private

  def get_article
  	@article = Article.find(params[:id])
  end

  def article_safe_params
  	params.require(:article).permit(:author, :title, :body, :picture, :published)
  end
end
