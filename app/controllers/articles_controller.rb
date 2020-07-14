class ArticlesController < ApplicationController

  def index
      # @articles = Article.all
       @articles = Article.order('created_at DESC')
       render action: 'index'
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
  end

  def create
    #render plain: params[:article].inspect
    @articles = Article.new(articles_params)
    if @articles.valid?
      @articles.save
      redirect_to @articles
    else
      render action: 'new'
    end
  end

  # def show
  #   @articles = Article.order('created_at DESC')
  #   render action: 'index'
  # end

  private

  def articles_params
    params.require(:article).permit(:title, :text)
  end

end
