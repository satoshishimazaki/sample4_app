class ArticlesController < ApplicationController
  before_action :signed_in_store,  only:[:create, :destroy, :new, :index]

  def new
  	  @article = Article.new
  end

  def show
      @article = Article.find(params[:id])
      if params[:format].in?(["jpg", "png", "gif"])
        send_image
      else
        render "articles/show"
      end
  end

  def index
      @articles = current_store.articles.paginate(page: params[:page])
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
   
    def send_image
      if @article.image.present?
        send_data @article.image.data,
          type: @article.image.content_type, disposition: "inline"
      else
        raise NotFound
      end
    end
end