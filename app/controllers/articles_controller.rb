class ArticlesController < ApplicationController
  before_action :signed_in_store

  def new
  	  @article = Article.new
  end

  def index
      @articles = Article.all
  end

  def create
  	  @article = current_store.articles.build(article_params)
    if @article.save
      flash[:success] = "投稿完了!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def article_params
      params.require(:article).permit( :content, :herenowtitle, :title )
    end
end