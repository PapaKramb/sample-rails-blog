class ArticlesController < ApplicationController

  def index
       @articles = Article.order('created_at DESC')
       render action: 'index'
  end

  def new
  end

  def create
    #render plain: params[:article].inspect
    @articles = Article.new(articles_params)
    if @articles.valid?
      @articles.save
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
